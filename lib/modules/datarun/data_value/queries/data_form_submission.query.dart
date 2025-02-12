import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/data_value/entities/data_form_submission.entity.dart';
import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.DATA)
class FormSubmissionQuery extends SyncableQuery<DataFormSubmission> {
  FormSubmissionQuery({Database? database}) : super(database: database);

  @override
  Future setDataAndSave(DataFormSubmission data) {
    return FormSubmissionQuery().setData(data).save();
  }

  // @override
  // Future create() async {
  //   final FormVersionQuery formVersionQuery = await FormVersionQuery()
  //   .where(attribute: 'formVersion', value: this.form as String);
  //   if(this.version != null) {
  //     formVersionQuery.where(attribute: 'version', value: this.version!);
  //   }
  //
  //   final FormVersion? formVersion = formVersionQuery
  //       .orderBy(attribute: 'version', order: SortOrder.DESC).getOne();
  //
  //
  //
  //   final DAssignment dAssignment =
  //   await DAssignmentQuery().byId(this.assignment as String).getOne();
  //
  //   final DataFormSubmission submission = DataFormSubmission(
  //       status: AssignmentStatus.IN_PROGRESS,
  //       form: form,
  //       formVersion: formVersion!.id!,
  //       version: formVersion.version,
  //       team: team,
  //       assignment: dAssignment.uid,
  //       orgUnit: dAssignment.orgUnit,
  //       formData: {},
  //       dirty: true,
  //       synced: false,
  //       deleted: false,
  //       isFinal: false,
  //       lastModifiedDate:
  //       DateHelper.nowUtc(),
  //       startEntryTime:
  //       DateHelper.nowUtc();
  //
  //   this.data = submission;
  //
  //   await this.save();
  //
  //   return submission;
  // }
}
