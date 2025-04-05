import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@Order(120)
@LazySingleton(as: AbstractDatasource)
class DataSubmissionDatasource
    extends BaseDataSource<$DataFormSubmissionsTable, DataFormSubmission>
    implements MetaDataSource<DataFormSubmission> {
  DataSubmissionDatasource(
      {required super.apiClient, required DbManager dbManager})
      : super(
            dbManager: dbManager,
            table: dbManager.getActiveDb()!.dataFormSubmissions);

  @override
  String get apiResourceName => 'dataSubmission';

  @override
  DataFormSubmission fromApiJson(Map<String, dynamic> data) {
    final String formVersion = data['form'] != null && data['version'] != null
        ? '${data['form']}_${data['version']}'
        : data['formVersion'];
    return DataFormSubmission.fromJson({
      ...data,
      'formVersion': formVersion,
      'assignment': data['assignment']?['id'],
      'orgUnit': data['orgUnit']?['id'],
    });
  }
}
