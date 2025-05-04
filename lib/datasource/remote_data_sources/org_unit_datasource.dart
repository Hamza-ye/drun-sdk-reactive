import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.orgUnit)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class OrgUnitDatasource extends BaseDataSource<$OrgUnitsTable, OrgUnit>
    implements MetaDataSource<OrgUnit> {
  OrgUnitDatasource(
      {required super.dioClient,
      required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.orgUnits);

  @override
  String get resourceName => 'orgUnits';

  @override
  OrgUnit fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    final parent = data['parent']?['uid'] ?? data['parent']?['id']?.toString();
    return OrgUnit.fromJson({...data, 'parent': parent},
        serializer: serializer);
  }
}
