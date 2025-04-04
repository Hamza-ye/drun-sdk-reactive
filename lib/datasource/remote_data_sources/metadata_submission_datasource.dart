import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class MetadataSubmissionDatasource
    extends GenericDataSource<$MetadataSubmissionsTable, MetadataSubmission>
    implements MetaDataSource<MetadataSubmission> {
  MetadataSubmissionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.getActiveDb()!.metadataSubmissions);

  @override
  String get apiResourceName => 'metadataSubmissions';

  @override
  FromJsonCallback<MetadataSubmission> get fromJsonCallback =>
      MetadataSubmission.fromJson;
}
