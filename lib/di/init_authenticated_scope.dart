import 'package:d_sdk/database/database.dart' as _i210;
import 'package:d_sdk/database/dbManager.dart' as _i312;
import 'package:d_sdk/datasource/abstract_datasource.dart' as _i458;
import 'package:d_sdk/datasource/remote_data_sources/activity_datasource.dart'
    as _i434;
import 'package:d_sdk/datasource/remote_data_sources/assignment_datasource.dart'
    as _i90;
import 'package:d_sdk/datasource/remote_data_sources/data_element_datasource.dart'
    as _i827;
import 'package:d_sdk/datasource/remote_data_sources/data_form_template_version_datasource.dart'
    as _i1014;
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart'
    as _i646;
import 'package:d_sdk/datasource/remote_data_sources/form_version_datasource.dart'
    as _i474;
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
import 'package:d_sdk/di/third_party_services.module.dart' as _i276;
import 'package:d_sdk/user_session/session_context.dart' as _i368;
import 'package:d_sdk/user_session/session_storage_manager.dart' as _i627;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// 🔍 **Search and replace regex: `AbstractDatasource]+>`
/// initializes the registration of sessionContext-scope dependencies inside of GetIt
Future<_i174.GetIt> initActiveSessionScope(
  _i174.GetIt getIt, {
  _i174.ScopeDisposeFunc? dispose,
}) async {
  return _i526.GetItHelper(getIt).initScopeAsync(
    'sessionContext',
    dispose: dispose,
    init: (_i526.GetItHelper gh) async {
      final thirdPartyServicesModule = _$ThirdPartyServicesModule();
      await gh.factoryAsync<_i368.SessionContext>(
        () => thirdPartyServicesModule
            .getSessionScope(gh<_i627.SessionRepository>()),
        preResolve: true,
      );
      gh.singleton<_i312.DbManager>(
        () => _i312.DbManager(context: gh<_i368.SessionContext>()),
        dispose: (i) => i.closeDatabase(),
      );
      gh.factory<_i458.AbstractDatasource>(
          () => _i589.ProjectDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i434.ActivityDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i790.OuLevelDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i185.OrgUnitDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i822.UserDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i756.OptionSetDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i827.DataElementDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i143.TeamDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i1014.DataFormTemplateDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i474.FormVersionDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i90.AssignmentDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i646.DataSubmissionDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
      gh.factory<_i458.AbstractDatasource>(
          () => _i1071.MetadataSubmissionDatasource(
                dioClient: gh<_i361.Dio>(),
                dbManager: gh<_i210.DbManager>(),
                apiPath: gh<String>(instanceName: 'apiPath'),
              ));
    },
  );
}

class _$ThirdPartyServicesModule extends _i276.ThirdPartyServicesModule {}
