// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:d_sdk/core/config/app_environment_instance.dart' as _i132;
import 'package:d_sdk/database/database.dart' as _i210;
import 'package:d_sdk/datasource/abstract_datasource.dart' as _i458;
import 'package:d_sdk/datasource/remote_data_sources/activity_datasource.dart'
    as _i434;
import 'package:d_sdk/datasource/remote_data_sources/assignment_datasource.dart'
    as _i90;
import 'package:d_sdk/datasource/remote_data_sources/data_element_datasource.dart'
    as _i827;
import 'package:d_sdk/datasource/remote_data_sources/data_form_template_version_datasource.dart'
    as _i1014;
import 'package:d_sdk/datasource/remote_data_sources/data_option_datasource.dart'
    as _i725;
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart'
    as _i646;
import 'package:d_sdk/datasource/remote_data_sources/data_value_datasource.dart'
    as _i239;
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
import 'package:d_sdk/datasource/remote_data_sources/repeat_instance_datasource.dart'
    as _i125;
import 'package:d_sdk/datasource/remote_data_sources/team_datasource.dart'
    as _i143;
import 'package:d_sdk/datasource/remote_data_sources/user_datasource.dart'
    as _i822;
import 'package:d_sdk/use_cases/logout_strategies/logout_handler.dart' as _i516;
import 'package:d_sdk/use_cases/logout_strategies/logout_handler_factory.dart'
    as _i1043;
import 'package:d_sdk/use_cases/logout_strategies/logout_strategies.dart'
    as _i261;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initSdkGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factoryParamAsync<_i516.LogoutHandler, _i261.LogoutStrategy?, dynamic>((
    strategy,
    _,
  ) =>
      _i516.LogoutHandler.getLogoutHandler(strategy: strategy));
  gh.factoryParam<_i1043.LogoutHandlerFactory, _i261.LogoutStrategy?, dynamic>((
    strategy,
    _,
  ) =>
      _i1043.LogoutHandlerFactory(strategy: strategy));
  gh.factory<_i458.AbstractDatasource<_i210.Project>>(
      () => _i589.ProjectDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.Activity>>(
      () => _i434.ActivityDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.OuLevel>>(
      () => _i790.OuLevelDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.OrgUnit>>(
      () => _i185.OrgUnitDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.User>>(() => _i822.UserDatasource(
        dioClient: gh<_i361.Dio>(),
        dbManager: gh<_i210.DbManager>(),
      ));
  gh.factory<_i458.AbstractDatasource<_i210.DataOptionSet>>(
      () => _i756.OptionSetDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.DataOption>>(
      () => _i725.OptionDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.DataElement>>(
      () => _i827.DataElementDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.Team>>(() => _i143.TeamDatasource(
        dioClient: gh<_i361.Dio>(),
        dbManager: gh<_i210.DbManager>(),
      ));
  gh.factory<_i458.AbstractDatasource<_i210.DataFormTemplateVersion>>(
      () => _i1014.DataFormTemplateDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.FormVersion>>(
      () => _i474.FormVersionDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.Assignment>>(
      () => _i90.AssignmentDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.DataSubmission>>(
      () => _i646.DataSubmissionDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
            environmentInstance: gh<_i132.AppEnvironmentInstance>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.RepeatInstance>>(
      () => _i125.RepeatInstanceDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.DataValue>>(
      () => _i239.DataValueDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  gh.factory<_i458.AbstractDatasource<_i210.MetadataSubmission>>(
      () => _i1071.MetadataSubmissionDatasource(
            dioClient: gh<_i361.Dio>(),
            dbManager: gh<_i210.DbManager>(),
          ));
  return getIt;
}
