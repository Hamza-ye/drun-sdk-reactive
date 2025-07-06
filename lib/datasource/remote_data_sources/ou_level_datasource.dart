import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.ouLevel)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class OuLevelDatasource extends BaseDataSource<$OuLevelsTable, OuLevel>
    implements MetaDataSource<OuLevel> {
  OuLevelDatasource(
      {required super.apiClient,
      required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.ouLevels);

  @override
  String get resourceName => 'ouLevels';

  @override
  OuLevel fromApiJson(Map<String, dynamic> data,
          {ValueSerializer? serializer}) =>
      OuLevel.fromJson(data, serializer: serializer);
}
