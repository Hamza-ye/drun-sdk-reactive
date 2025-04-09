// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:d_sdk/core/auth/auth_manager.dart' as _i253;
import 'package:d_sdk/core/auth/authentication_service.dart' as _i882;
import 'package:d_sdk/core/cache/cache.dart' as _i505;
import 'package:d_sdk/core/config/app_environment_instance.dart' as _i132;
import 'package:d_sdk/core/http/authorize_http_client_decorator.dart' as _i147;
import 'package:d_sdk/core/http/http_adapter.dart' as _i69;
import 'package:d_sdk/core/http/http_client.dart' as _i8;
import 'package:d_sdk/core/network/connectivy_service.dart' as _i345;
import 'package:d_sdk/core/user_session/sdk_session_storage_manager.dart'
    as _i287;
import 'package:d_sdk/core/user_session/session_storage_manager.dart' as _i389;
import 'package:d_sdk/database/app_database.dart' as _i648;
import 'package:d_sdk/database/db_manager.dart' as _i932;
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
import 'package:d_sdk/datasource/remote_data_sources/data_value_datasource.dart'
    as _i239;
import 'package:d_sdk/datasource/remote_data_sources/form_version_datasource.dart'
    as _i474;
import 'package:d_sdk/datasource/remote_data_sources/metadata_submission_datasource.dart'
    as _i1071;
import 'package:d_sdk/datasource/remote_data_sources/option_datasource.dart'
    as _i525;
import 'package:d_sdk/datasource/remote_data_sources/option_set_datasource.dart'
    as _i756;
import 'package:d_sdk/datasource/remote_data_sources/org_unit_datasource.dart'
    as _i185;
import 'package:d_sdk/datasource/remote_data_sources/ou_level_datasource.dart'
    as _i790;
import 'package:d_sdk/datasource/remote_data_sources/project_datasource.dart'
    as _i589;
import 'package:d_sdk/datasource/remote_data_sources/repeat_instance_datasource.dart'
    as _i125;
import 'package:d_sdk/datasource/remote_data_sources/team_datasource.dart'
    as _i143;
import 'package:d_sdk/datasource/remote_data_sources/user_datasource.dart'
    as _i822;
import 'package:d_sdk/di/third_party_services.module.dart' as _i276;
import 'package:d_sdk/use_cases/authentication/remote_authentication.dart'
    as _i654;
import 'package:d_sdk/use_cases/authentication/sdk_auth_manager.dart' as _i751;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initD2RemoteGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => thirdPartyServicesModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i932.DbManager>(() => _i932.DbManager());
  gh.lazySingleton<_i361.Dio>(
      () => thirdPartyServicesModule.dio(gh<_i132.AppEnvironmentInstance>()));
  gh.lazySingleton<_i505.CacheStorage>(() => thirdPartyServicesModule
      .cachedStorage(gh<_i132.AppEnvironmentInstance>()));
  gh.lazySingleton<_i8.HttpClient<dynamic>>(
    () => _i69.HttpAdapter(
      gh<_i361.Dio>(),
      gh<_i132.AppEnvironmentInstance>(),
    ),
    instanceName: 'HttpAdapter',
  );
  gh.lazySingleton<_i345.ConnectivityService>(() => _i345.ConnectivityService(
        environmentInstance: gh<_i132.AppEnvironmentInstance>(),
        httpClient: gh<_i8.HttpClient<dynamic>>(instanceName: 'HttpAdapter'),
      ));
  gh.lazySingleton<_i882.AuthenticationService>(() =>
      _i654.RemoteAuthentication(
        httpClient: gh<_i8.HttpClient<dynamic>>(instanceName: 'HttpAdapter'),
        envInstance: gh<_i132.AppEnvironmentInstance>(),
      ));
  gh.lazySingleton<_i389.SessionStorageManager>(() =>
      _i287.SdkSessionStorageManager(cacheStorage: gh<_i505.CacheStorage>()));
  gh.lazySingleton<_i253.AuthManager>(
    () => _i751.SdkAuthManager(
      storageManager: gh<_i389.SessionStorageManager>(),
      dbManager: gh<_i932.DbManager>(),
      authenticationService: gh<_i882.AuthenticationService>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i8.HttpClient<dynamic>>(
      () => _i147.AuthorizeHttpClientDecorator(
            gh<_i253.AuthManager>(),
            gh<_i8.HttpClient<dynamic>>(instanceName: 'HttpAdapter'),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.Project>>(
      () => _i589.ProjectDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.Activity>>(
      () => _i434.ActivityDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.OuLevel>>(
      () => _i790.OuLevelDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.OrgUnit>>(
      () => _i185.OrgUnitDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.User>>(
      () => _i822.UserDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.DataOptionSet>>(
      () => _i756.OptionSetDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.DataOption>>(
      () => _i525.OptionDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.DataElement>>(
      () => _i827.DataElementDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.Team>>(
      () => _i143.TeamDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.DataFormTemplateVersion>>(
      () => _i1014.DataFormTemplateDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.FormVersion>>(
      () => _i474.FormVersionDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.Assignment>>(
      () => _i90.AssignmentDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.DataSubmission>>(
      () => _i646.DataSubmissionDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.RepeatInstance>>(
      () => _i125.RepeatInstanceDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.DataValue>>(
      () => _i239.DataValueDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  gh.lazySingleton<_i458.AbstractDatasource<_i648.MetadataSubmission>>(
      () => _i1071.MetadataSubmissionDatasource(
            apiClient: gh<_i8.HttpClient<dynamic>>(),
            dbManager: gh<_i932.DbManager>(),
          ));
  return getIt;
}

class _$ThirdPartyServicesModule extends _i276.ThirdPartyServicesModule {}
