import 'package:d_sdk/core/http/http_client.dart' as _i8;
import 'package:d_sdk/database/database.dart' as _i210;
import 'package:d_sdk/database/dbManager.dart' as _i312;
import 'package:d_sdk/datasource/datasource.dart' as _i277;
import 'package:d_sdk/datasource/remote_data_sources/activity_datasource.dart'
    as _i434;
import 'package:d_sdk/datasource/remote_data_sources/assignment_datasource.dart'
    as _i90;
import 'package:d_sdk/datasource/remote_data_sources/data_element_datasource.dart'
    as _i827;
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart'
    as _i646;
import 'package:d_sdk/datasource/remote_data_sources/form_template_datasource.dart'
    as _i569;
import 'package:d_sdk/datasource/remote_data_sources/managed_team_datasource.dart'
    as _i718;
import 'package:d_sdk/datasource/remote_data_sources/metadata_submission_datasource.dart'
    as _i1071;
import 'package:d_sdk/datasource/remote_data_sources/option_set_datasource.dart'
    as _i756;
import 'package:d_sdk/datasource/remote_data_sources/org_unit_datasource.dart'
    as _i185;
import 'package:d_sdk/datasource/remote_data_sources/ou_level_datasource.dart'
    as _i790;
import 'package:d_sdk/datasource/remote_data_sources/project_datasource.dart'
    as _i589;
import 'package:d_sdk/datasource/remote_data_sources/team_datasource.dart'
    as _i143;
import 'package:d_sdk/datasource/remote_data_sources/user_datasource.dart'
    as _i822;
import 'package:d_sdk/datasource/remote_data_sources/user_form_permission_datasource.dart'
    as _i588;
import 'package:d_sdk/di/third_party_services.module.dart' as _i276;
import 'package:d_sdk/user_session/session_context.dart' as _i368;
import 'package:d_sdk/user_session/session_repository.dart' as _i993;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// AbAstractDatasource<[^>]+>
// initializes the registration of activeSessionContext-scope dependencies inside of GetIt
Future<_i174.GetIt> initActiveSessionScope(
  _i174.GetIt getIt, {
  _i174.ScopeDisposeFunc? dispose,
}) async {
  return _i526.GetItHelper(getIt).initScopeAsync(
    'activeSessionContext',
    dispose: dispose,
    init: (_i526.GetItHelper gh) async {
      final thirdPartyServicesModule = _$ThirdPartyServicesModule();
      await gh.factoryAsync<_i368.SessionContext>(
        () => thirdPartyServicesModule
            .getSessionScope(gh<_i993.SessionRepository>()),
        preResolve: true,
      );
      gh.singleton<_i312.DbManager>(
        () => _i312.DbManager(context: gh<_i368.SessionContext>()),
        dispose: (i) => i.closeDatabase(),
      );
      gh.factory<_i822.UserDatasource>(() => _i822.UserDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i589.ProjectDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i434.ActivityDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i790.OuLevelDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i185.OrgUnitDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i756.OptionSetDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i827.DataElementDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(
          () => _i569.DataFormTemplateDatasource(
                apiClient: gh<_i8.HttpClient<dynamic>>(),
                dbManager: gh<_i210.DbManager>(),
              ));
      gh.factory<_i277.AbstractDatasource>(() => _i143.TeamDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i718.ManagedTeamDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(
          () => _i588.UserFormAccessesDatasource(
                apiClient: gh<_i8.HttpClient<dynamic>>(),
                dbManager: gh<_i210.DbManager>(),
              ));
      gh.factory<_i277.AbstractDatasource>(() => _i90.FlowInstanceDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(() => _i646.DataSubmissionDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i210.DbManager>(),
          ));
      gh.factory<_i277.AbstractDatasource>(
          () => _i1071.MetadataSubmissionDatasource(
                apiClient: gh<_i8.HttpClient<dynamic>>(),
                dbManager: gh<_i210.DbManager>(),
              ));
    },
  );
}

class _$ThirdPartyServicesModule extends _i276.ThirdPartyServicesModule {}
