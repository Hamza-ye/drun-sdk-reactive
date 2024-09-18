// import 'package:d2_remote/core/annotations/nmc/query.annotation.dart';
// import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
// import 'package:d2_remote/core/datarun/utilities/date_utils.dart';
// import 'package:d2_remote/modules/datarun/form_data/entities/entities.dart';
// import 'package:d2_remote/modules/datarun_shared/queries/syncable.query.dart';
// import 'package:sqflite/sqflite.dart';
//
// @AnnotationReflectable
// @Query(type: QueryType.DATA)
// class FormInstanceQuery extends SyncableQuery<FormInstance> {
//   FormInstanceQuery({Database? database}) : super(database: database);
//
//   @override
//   Future setDataAndSave(FormInstance data) {
//     return FormInstanceQuery().setData(data).save();
//   }
//
//   @override
//   Future create() async {
//     FormInstance event = FormInstance(
//         status: 'ACTIVE',
//         formModel: this.form,
//         version: version!,
//         activity: this.activity,
//         team: this.team,
//         orgUnit: this.orgUnit!,
//         fields: [],
//         dirty: true,
//         synced: false,
//         deleted: false,
//         startEntryTime:
//             DateUtils.databaseDateFormat().format(DateTime.now().toUtc()));
//
//     this.data = event;
//
//     await this.save();
//
//     return event;
//   }
// }
