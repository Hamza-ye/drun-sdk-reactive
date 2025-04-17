import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/abstract_datasource.dart';
import 'package:d_sdk/datasource/base_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(150)
@Injectable(as: AbstractDatasource<Insertable<dynamic>>)
class MetadataSubmissionDatasource
    extends BaseDataSource<$MetadataSubmissionsTable, MetadataSubmission>
    implements MetaDataSource<MetadataSubmission> {
  MetadataSubmissionDatasource(
      {required super.dioClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.metadataSubmissions);

  @override
  String get apiResourceName => 'metadataSubmissions';

  @override
  MetadataSubmission fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      MetadataSubmission.fromJson(data, serializer: serializer);
}
