import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(150)
@LazySingleton(as: AbstractDatasource, scope: 'authenticated')
class MetadataSubmissionDatasource
    extends BaseDataSource<$MetadataSubmissionsTable, MetadataSubmission>
    implements MetaDataSource<MetadataSubmission> {
  MetadataSubmissionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.db.metadataSubmissions);

  @override
  String get apiResourceName => 'metadataSubmissions';

  @override
  MetadataSubmission fromApiJson(Map<String, dynamic> data) =>
      MetadataSubmission.fromJson(data);
}
