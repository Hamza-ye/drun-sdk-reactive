import 'package:d_sdk/core/config/app_environment_instance.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt initAuthScope(
  GetIt getIt, {
  required String username,
  required String baseUrl,
  ScopeDisposeFunc? dispose,
}) {
  getIt.enableRegisteringMultipleInstancesOfOneType();
  return GetItHelper(getIt).initScope(
    'authenticated',
    dispose: dispose,
    init: (GetItHelper gh) {
      gh.lazySingleton<DbProvider>(
        () => DbProvider('${Uri.parse(baseUrl).host}_${username}'),
        dispose: (i) => i.closeDatabase(),
      );

      gh.lazySingleton<DbManager>(() => DbManager(gh<DbProvider>()));
      gh.lazySingleton<AbstractDatasource>(() => ProjectDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => ActivityDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => OuLevelDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => OrgUnitDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => UserDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => OptionSetDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => OptionDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => DataElementDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => TeamDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => DataFormTemplateDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => FormVersionDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => AssignmentDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => DataSubmissionDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
            environmentInstance: gh<AppEnvironmentInstance>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => RepeatInstanceDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => DataValueDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource>(() => MetadataSubmissionDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
    },
  );
}
