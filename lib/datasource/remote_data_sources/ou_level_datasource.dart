import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/d_datasource.dart';
import 'package:d_sdk/datasource/generic_datasource.dart';
import 'package:d_sdk/datasource/metadata_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DDatasource)
class OuLevelDatasource extends GenericDataSource<$OuLevelsTable, OuLevel>
    implements MetaDataSource<OuLevel> {
  OuLevelDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.getActiveDb()!.ouLevels);

  @override
  String get apiResourceName => 'ouLevels';

  @override
  FromJsonCallback<OuLevel> get fromJsonCallback => OuLevel.fromJson;
}
