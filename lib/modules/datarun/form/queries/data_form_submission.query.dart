import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/core/datarun/utilities/date_utils.dart';
import 'package:d2_remote/modules/datarun/form/entities/data_form_submission.entity.dart';
import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.DATA)
class DataFormSubmissionQuery extends SyncableQuery<DataFormSubmission> {
  DataFormSubmissionQuery({Database? database}) : super(database: database);

  @override
  Future create() async {
    DataFormSubmission event = DataFormSubmission(
        activity: this.activity,
        team: this.team,
        status: 'ACTIVE',
        dirty: true,
        synced: false,
        deleted: false,
        startEntryTime:
            DateUtils.databaseDateFormat().format(DateTime.now().toUtc()));

    this.data = event;

    await this.save();

    return event;
  }

  @override
  Future setDataAndSave(DataFormSubmission data) {
    return DataFormSubmissionQuery().setData(data).save();
  }
}
