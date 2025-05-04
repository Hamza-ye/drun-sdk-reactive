import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.metadataSubmission)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class MetadataSubmissionDatasource
    extends BaseDataSource<$MetadataSubmissionsTable, MetadataSubmission>
    implements MetaDataSource<MetadataSubmission> {
  MetadataSubmissionDatasource(
      {required super.dioClient,
      required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.metadataSubmissions);

  @override
  String get resourceName => 'metadataSubmissions';

  @override
  MetadataSubmission fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      MetadataSubmission.fromJson(data, serializer: serializer);
}
