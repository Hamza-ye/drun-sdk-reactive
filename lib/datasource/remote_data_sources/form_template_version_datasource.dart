// import 'package:d_sdk/core/sync/model/sync_config.dart';
// import 'package:d_sdk/database/converters/converters.dart';
// import 'package:d_sdk/database/database.dart';
// import 'package:d_sdk/datasource/datasource.dart';
// import 'package:d_sdk/user_session/session_context.dart';
// import 'package:drift/drift.dart';
// import 'package:fast_immutable_collections/fast_immutable_collections.dart';
// import 'package:injectable/injectable.dart';
//
// @Order(DSOrder.formTemplateVersion)
// @Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
// class FormTemplateVersionDatasource
//     extends BaseDataSource<$FormTemplateVersionsTable, FormTemplateVersion>
//     implements MetaDataSource<FormTemplateVersion> {
//   FormTemplateVersionDatasource(
//       {required super.apiClient, required DbManager dbManager})
//       : super(dbManager: dbManager, table: dbManager.db.formTemplateVersions);
//
//   @override
//   String get resourceName => 'dataFormTemplates';
//
//   Future<List<FormTemplateVersion>> syncWithRemote(
//       {SyncConfig? options, ProgressCallback? progressCallback}) async {
//     final remoteData = await getOnline();
//
//     progressCallback?.call(60);
//     if (remoteData.isNotEmpty) {
//       db.transaction(() async {
//         await db.batch((b) {
//           b.insertAllOnConflictUpdate(table, remoteData);
//         });
//       });
//     }
//     progressCallback?.call(100);
//     return remoteData;
//   }
//
//
//   // @override
//   // FormTemplate fromApiJson(Map<String, dynamic> data,
//   //     {ValueSerializer? serializer}) {
//   //   return FormTemplate.fromJson({
//   //     ...data,
//   //     'id': data['uid'],
//   //     'formVersion': data['formVersion'],
//   //     'versionNumber': data['versionNumber'],
//   //   }, serializer: serializer);
//   // }
//
//   @override
//   FormTemplateVersion fromApiJson(Map<String, dynamic> data,
//       {ValueSerializer? serializer}) {
//     return FormTemplateVersion.fromJson({
//       ...data,
//       'id': data['formVersion'],
//       'template': data['uid'],
//       'versionNumber': data['versionNumber'],
//       'disabled': data['disabled'] ?? true,
//     }, serializer: serializer);
//   }
// }
