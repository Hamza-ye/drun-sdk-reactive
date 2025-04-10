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
  return GetItHelper(getIt).initScope(
    'authenticated',
    dispose: dispose,
    init: (GetItHelper gh) {
      gh.lazySingleton<DbProvider>(
        () => DbProvider('${Uri.parse(baseUrl).host}_${username}'),
        dispose: (i) => i.closeDatabase(),
      );

      gh.lazySingleton<DbManager>(() => DbManager(gh<DbProvider>()));
      gh.lazySingleton<AbstractDatasource<Project>>(() => ProjectDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<Activity>>(() => ActivityDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<OuLevel>>(() => OuLevelDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<OrgUnit>>(() => OrgUnitDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<User>>(() => UserDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<DataOptionSet>>(
          () => OptionSetDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
              ));
      gh.lazySingleton<AbstractDatasource<DataOption>>(() => OptionDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<DataElement>>(
          () => DataElementDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
              ));
      gh.lazySingleton<AbstractDatasource<Team>>(() => TeamDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<DataFormTemplateVersion>>(
          () => DataFormTemplateDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
              ));
      gh.lazySingleton<AbstractDatasource<FormVersion>>(
          () => FormVersionDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
              ));
      gh.lazySingleton<AbstractDatasource<Assignment>>(
          () => AssignmentDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
              ));
      gh.lazySingleton<AbstractDatasource<DataSubmission>>(
          () => DataSubmissionDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
                environmentInstance: gh<AppEnvironmentInstance>(),
              ));
      gh.lazySingleton<AbstractDatasource<RepeatInstance>>(
          () => RepeatInstanceDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
              ));
      gh.lazySingleton<AbstractDatasource<DataValue>>(() => DataValueDatasource(
            apiClient: gh<HttpClient<dynamic>>(),
            dbManager: gh<DbManager>(),
          ));
      gh.lazySingleton<AbstractDatasource<MetadataSubmission>>(
          () => MetadataSubmissionDatasource(
                apiClient: gh<HttpClient<dynamic>>(),
                dbManager: gh<DbManager>(),
              ));
    },
  );
}
