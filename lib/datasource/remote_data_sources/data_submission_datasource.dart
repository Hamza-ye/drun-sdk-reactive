import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class DataSubmissionDatasource
    extends GenericDataSource<$DataFormSubmissionsTable, DataFormSubmission>
    implements MetaDataSource<DataFormSubmission> {
  DataSubmissionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.getActiveDb()!.dataFormSubmissions);

  @override
  String get apiResourceName => 'dataSubmission';

  @override
  FromJsonCallback<DataFormSubmission> get fromJsonCallback =>
      DataFormSubmission.fromJson;
}
