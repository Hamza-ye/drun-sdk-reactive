import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun_shared/sync/call/d2_progress.dart';
import 'package:d2_remote/shared/models/request_progress.model.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:queue/queue.dart';
import 'package:reflectable/reflectable.dart';

class SyncMetadata {
  SyncMetadata() {
    metadataSyncInProgress = false;
  }

  late bool metadataSyncInProgress;

  Future<void> download({Function(D2Progress? progress)? callback}) async {
    D2Progress progress = D2Progress(progressState: WorkInfoState.ENQUEUED);
    if (!metadataSyncInProgress) {
      metadataSyncInProgress = true;
    }

    final Iterable<ClassMirror> annotatedClasses =
        AnnotationReflectable.annotatedClasses;

    final IList<ClassMirror> queryMetadataItems = annotatedClasses
        .where((classMirror) {
          final items = classMirror.metadata.whereType<Query>();
          return items.isNotEmpty &&
              items.first.type == QueryType.METADATA &&

              /// aut == true, Metadata are automatically downloaded
              /// using sync, but Metadata with aut set to false are
              /// only downloaded on User Request.
              items.first.aut;
        })
        .toList()
        .lock;
    IList<D2Progress> requestProgresses = queryMetadataItems
        .map((queryResource) => progress.copyWith(

            message:
                'Downloading ${queryResource.simpleName.toUpperCase()} from the server',
            isComplete: false,
            percentage: 0))
        .toIList();

    // final IList<
    //         void Function(D2Progress progress, bool isComplete, dynamic)>
    //     requestProgressCallbacks =
    //     queryMetadataItems.mapIndexed((index, queryResource) {
    //   return (D2Progress progress, bool isComplete, dynamic e) {
    //     if (requestProgresses.length >= index) {
    //       requestProgresses = requestProgresses.replace(
    //           index, progress.copyWith(isComplete: isComplete));
    //       callback.call(requestProgresses, isComplete, e);
    //     }
    //   };
    // }).toIList();

    final queue = Queue(parallel: 2);

    for (var index = 0; index < queryMetadataItems.length; index++) {
      var queryMetadata = queryMetadataItems[index];

      final dynamic metadataEntityQuery =
          queryMetadata.newInstance('', [], {const Symbol('database'): null});

      queue.add(() =>
          Future(() => callback?.call(requestProgresses.getOrNull(index))));

      /// For Test,
      // if (activityManagementEntitiesNames
      //     .contains(metadataEntityQuery.apiResourceName)) {
      //   queue.add(() => metadataEntityQuery.download(
      //           (RequestProgress requestProgress, bool isComplete) {
      //         callback?.call(D2Progress(
      //             message: requestProgress.message,
      //             percentage: requestProgress.percentage));
      //       }, dioTestClient: activityManagementDio));
      // } else {
      queue.add(() => metadataEntityQuery
              .download((RequestProgress requestProgress, bool isComplete) {
            callback?.call(progress.copyWith(
              progressState: WorkInfoState.RUNNING,
                message: requestProgress.message,
                percentage: requestProgress.percentage));
          }));
      // }
    }

    await queue.onComplete;

    // try {

    // } catch (e) {
    // callback?.call(null);
    // }
  }
}
