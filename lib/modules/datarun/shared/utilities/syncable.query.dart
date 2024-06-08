import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun/shared/entities/syncable.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
class SyncableQuery<T extends SyncableEntity> extends BaseQuery<T> {
  SyncableQuery({Database? database}) : super(database: database);

  /// Not Synced to server at all, no available on server
  /// State = to_post
  /// withNotSyncedState
  SyncableQuery withToPostState() {
    this.filters?.removeWhere((element) => element.attribute == 'syncFailed');
    this
        .where(attribute: 'synced', value: false)
        .where(attribute: 'dirty', value: true);
    return this;
  }

  /// Synced to server with updates to be synced, State = to_update
  SyncableQuery withToUpdateState() {
    this.filters?.removeWhere((element) => element.attribute == 'syncFailed');
    this
        .where(attribute: 'synced', value: true)
        .where(attribute: 'dirty', value: true);
    return this;
  }

  /// Synced to server with No Updates to be synced
  SyncableQuery withSyncedState() {
    this.filters?.removeWhere((element) => element.attribute == 'syncFailed');
    this
        .where(attribute: 'synced', value: true)
        .where(attribute: 'dirty', value: false);
    return this;
  }

  /// Not Synced to server at all, Couldn't be synced
  /// State = to_post but have errors
  SyncableQuery withSyncErrorState() {
    this
        .where(attribute: 'synced', value: false)
        .where(attribute: 'dirty', value: true)
        .where(attribute: 'syncFailed', value: true);
    return this;
  }

  /// Synced entities couldn't be updated for updates that have errors,
  /// State = to_update but have errors
  SyncableQuery withUpdateErrorState() {
    this
        .where(attribute: 'synced', value: true)
        .where(attribute: 'dirty', value: true)
        .where(attribute: 'syncFailed', value: true);
    return this;
  }
}
