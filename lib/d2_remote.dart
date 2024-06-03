library d2_remote;

import 'package:d2_remote/core/database/database_manager.dart';
import 'package:d2_remote/modules/activity_management/activity/activity.module.dart';
import 'package:d2_remote/modules/activity_management/assignment/assignment.module.dart';
import 'package:d2_remote/modules/activity_management/project/project.module.dart';
import 'package:d2_remote/modules/activity_management/team/team.module.dart';
import 'package:d2_remote/modules/auth/user/d_user.module.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/models/auth-token.model.dart';
import 'package:d2_remote/modules/auth/user/models/login-response.model.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/data/aggregate/aggregate.module.dart';
import 'package:d2_remote/modules/data/tracker/tracked_entity_instance.module.dart';
import 'package:d2_remote/modules/datarun/iccm/iccm.module.dart';
import 'package:d2_remote/modules/datarun/itns/itns.module.dart';
import 'package:d2_remote/modules/file_resource/file_resource.module.dart';
import 'package:d2_remote/modules/metadata/dashboard/dashboard.module.dart';
import 'package:d2_remote/modules/metadata/data_element/data_element.module.dart';
import 'package:d2_remote/modules/metadata/dataset/data_set.module.dart';
import 'package:d2_remote/modules/metadata/option_set/option.module.dart';
import 'package:d2_remote/modules/metadata/organisation_unit/organisation_unit.module.dart';
import 'package:d2_remote/modules/metadata/program/program.module.dart';
import 'package:d2_remote/modules/metadatarun/activity/d_activity.module.dart';
import 'package:d2_remote/modules/metadatarun/assignment/d_assignment.module.dart';
import 'package:d2_remote/modules/metadatarun/project/d_project.module.dart';
import 'package:d2_remote/modules/metadatarun/teams/d_team.module.dart';
import 'package:d2_remote/modules/metadatarun/village_location/d_organisation_unit.module.dart';
import 'package:d2_remote/modules/metadatarun/warehouse/warehouse.module.dart';
import 'package:d2_remote/modules/notification/notification.module.dart';
import 'package:d2_remote/shared/utilities/http_client.util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class D2Remote {
  static Future<void> initialize(
      {String? databaseName,
      bool? inMemory,
      DatabaseFactory? databaseFactory}) async {
    final newDatabaseName = databaseName ?? await D2Remote.getDatabaseName();
    if (newDatabaseName != null) {
      DatabaseManager(
          databaseName: newDatabaseName,
          inMemory: inMemory,
          databaseFactory: databaseFactory);

      await DatabaseManager.instance.database;
      await DUserModule.createTables();
      await WarehouseModule.createTables();
      await DOrganisationUnitModule.createTables();
      await DProjectModule.createTables();
      await DActivityModule.createTables();
      await DTeamModule.createTables();
      await DAssignmentModule.createTables();
      await ItnsVillageModule.createTables();
      await IccmModule.createTables();

      await OrganisationUnitModule.createTables();
      await DataElementModule.createTables();
      await DataSetModule.createTables();
      await ProgramModule.createTables();
      await ProjectModule.createTables();
      await ActivityModule.createTables();
      await TeamModule.createTables();
      await AssignmentModule.createTables();
      await DashboardModule.createTables();
      await TrackedEntityInstanceModule.createTables();
      await AggregateModule.createTables();
      await OptionModule.createTables();
      await NotificationModule.createTables();
      await FileResourceModule.createTables();
    }
  }

  static Future<bool> isAuthenticated(
      {Future<SharedPreferences>? sharedPreferenceInstance,
      bool? inMemory,
      DatabaseFactory? databaseFactory}) async {
    WidgetsFlutterBinding.ensureInitialized();
    final databaseName = await D2Remote.getDatabaseName(
        sharedPreferenceInstance: sharedPreferenceInstance);

    if (databaseName == null) {
      return false;
    }

    await D2Remote.initialize(
        databaseName: databaseName,
        inMemory: inMemory,
        databaseFactory: databaseFactory);

    DUser? user = await D2Remote.userModule.user.getOne();

    return user?.isLoggedIn ?? false;
  }

  static Future<String?> getDatabaseName(
      {Future<SharedPreferences>? sharedPreferenceInstance}) async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs =
        await (sharedPreferenceInstance ?? SharedPreferences.getInstance());
    return prefs.getString('databaseName');
  }

  static Future<bool> setDatabaseName(
      {required String databaseName,
      Future<SharedPreferences>? sharedPreferenceInstance}) async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs =
        await (sharedPreferenceInstance ?? SharedPreferences.getInstance());
    return prefs.setString('databaseName', databaseName);
  }

  static Future<LoginResponseStatus> logInDataRun(
      {required String username,
        required String password,
        required String url,
        Future<SharedPreferences>? sharedPreferenceInstance,
        bool? inMemory,
        DatabaseFactory? databaseFactory,
        Dio? dioTestClient}) async {
    WidgetsFlutterBinding.ensureInitialized();

    // Data-Run
    HttpResponse userResponse = await HttpClient.get('authenticateBasic',
        baseUrl: url,
        username: username,
        password: password,
        dioTestClient: dioTestClient);

    if (userResponse.statusCode == 401) {
      return LoginResponseStatus.WRONG_CREDENTIALS;
    }

    if (userResponse.statusCode == 500) {
      return LoginResponseStatus.SERVER_ERROR;
    }

    final uri = Uri.parse(url).host;
    final String databaseName = '${username}_$uri';

    await D2Remote.initialize(
        databaseName: databaseName,
        inMemory: inMemory,
        databaseFactory: databaseFactory);

    await D2Remote.setDatabaseName(
        databaseName: databaseName,
        sharedPreferenceInstance:
        sharedPreferenceInstance ?? SharedPreferences.getInstance());

    DUserQuery userQuery = DUserQuery();

    Map<String, dynamic> userData = userResponse.body;
    userData['password'] = password;
    userData['isLoggedIn'] = true;
    userData['username'] = username;
    userData['baseUrl'] = url;
    // Data Run come from API
    // userData['authTye'] = 'basic';
    // userData['authTye'] = 'Bearer';
    userData['dirty'] = true;
    // Data-Run

    final user = DUser.fromApi(userData);
    await userQuery.setData(user).save();

    // Data Run
    // await DUserOrganisationUnitQuery().setData(user.organisationUnits).save();
    // await DUserTeamQuery().setData(user.teams).save();

    return LoginResponseStatus.ONLINE_LOGIN_SUCCESS;
  }

  // static Future<LoginResponseStatus> logIn({required String username,
  //   required String password,
  //   required String url,
  //   Future<SharedPreferences>? sharedPreferenceInstance,
  //   bool? inMemory,
  //   DatabaseFactory? databaseFactory,
  //   Dio? dioTestClient}) async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   HttpResponse userResponse = await HttpClient.get(
  //     // 'me.json?fields=id,name,lastName,login,created,lastUpdated,birthday,gender,displayName,jobTitle,surname,employer,email,firstName,phoneNumber,nationality,userCredentials[code,id,name,lastLogin,displayName,username,userRoles[id,name,code]],organisationUnits[id,code,name],teams[id,code,name],dataViewOrganisationUnits[id,code,name],userGroups[id,name],authorities,programs,dataSets',
  //       'me.json?fields=id,name,lastName,langKey,login,created,lastUpdated,birthday,gender,displayName,jobTitle,surname,employer,email,firstName,phoneNumber,nationality,code,lastLogin,username,userRoles[id,name,code],organisationUnits[id,code,name],teams[id,name],dataViewOrganisationUnits[id,code,name],userGroups[id,name],authorities,programs,dataSets',
  //       baseUrl: url,
  //       username: username,
  //       password: password,
  //       dioTestClient: dioTestClient);
  //
  //   if (userResponse.statusCode == 401) {
  //     return LoginResponseStatus.WRONG_CREDENTIALS;
  //   }
  //
  //   if (userResponse.statusCode == 500) {
  //     return LoginResponseStatus.SERVER_ERROR;
  //   }
  //
  //   final uri = Uri
  //       .parse(url)
  //       .host;
  //   final String databaseName = '${username}_$uri';
  //
  //   await D2Remote.initialize(
  //       databaseName: databaseName,
  //       inMemory: inMemory,
  //       databaseFactory: databaseFactory);
  //
  //   await D2Remote.setDatabaseName(
  //       databaseName: databaseName,
  //       sharedPreferenceInstance:
  //       sharedPreferenceInstance ?? SharedPreferences.getInstance());
  //
  //   UserQuery userQuery = UserQuery();
  //
  //   Map<String, dynamic> userData = userResponse.body;
  //   userData['password'] = password;
  //   userData['isLoggedIn'] = true;
  //   userData['username'] = username;
  //   userData['baseUrl'] = url;
  //   userData['authTye'] = 'basic';
  //   userData['dirty'] = true;
  //
  //   final user = User.fromApi(userData);
  //   await userQuery.setData(user).save();
  //
  //   await UserOrganisationUnitQuery().setData(user.organisationUnits).save();
  //
  //   await UserTeamQuery().setData(user.teams).save();
  //
  //   return LoginResponseStatus.ONLINE_LOGIN_SUCCESS;
  // }

  static Future<bool> logOut() async {
    WidgetsFlutterBinding.ensureInitialized();
    bool logOutSuccess = false;
    try {
      DUser? currentUser = await D2Remote.userModule.user.getOne();

      currentUser?.isLoggedIn = false;
      currentUser?.dirty = true;

      await D2Remote.userModule.user.setData(currentUser).save();

      logOutSuccess = true;
    } catch (e) {}
    return logOutSuccess;
  }

  static Future<LoginResponseStatus> setToken(
      {required String instanceUrl,
      required Map<String, dynamic> userObject,
      required Map<String, dynamic> tokenObject,
      Future<SharedPreferences>? sharedPreferenceInstance,
      bool? inMemory,
      DatabaseFactory? databaseFactory,
      Dio? dioTestClient}) async {
    final uri = Uri.parse(instanceUrl).host;
    final String databaseName = '$uri';
    await D2Remote.initialize(
        databaseName: databaseName,
        inMemory: inMemory,
        databaseFactory: databaseFactory);

    await D2Remote.setDatabaseName(
        databaseName: databaseName,
        sharedPreferenceInstance:
            sharedPreferenceInstance ?? SharedPreferences.getInstance());

    AuthToken token = AuthToken.fromJson(tokenObject);

    List<dynamic> authorities = [];

    // userObject['userRoles'].forEach((role) {
    //   List<dynamic> authoritiesToAdd = role["authorities"].map((auth) {
    //     return auth as String;
    //   }).toList();
    //
    //   authorities.addAll(authoritiesToAdd);
    // });

    userObject['token'] = token.accessToken;
    userObject['tokenType'] = token.tokenType;
    userObject['tokenExpiry'] = token.expiresIn;
    userObject['refreshToken'] = token.refreshToken;
    userObject['isLoggedIn'] = true;
    userObject['dirty'] = true;
    userObject['baseUrl'] = instanceUrl;
    userObject['authType'] = "token";
    userObject['authorities'] = authorities;

    final user = DUser.fromApi(userObject);
    await DUserQuery().setData(user).save();

    return LoginResponseStatus.ONLINE_LOGIN_SUCCESS;
  }

  static Future<List<Map>> rawQuery(
      {required String query, required List args}) async {
    final Database db = await DatabaseManager.instance.database;

    final List<Map> queryResult = await db.rawQuery(query.toString(), args);

    return queryResult;
  }

  static OrganisationUnitModule organisationUnitModule =
      OrganisationUnitModule();

  static DataElementModule dataElementModule = DataElementModule();

  static DataSetModule dataSetModule = DataSetModule();

  static ProjectModule projectModule = ProjectModule();

  static ActivityModule activityModule = ActivityModule();

  static AssignmentModule assignmentModule = AssignmentModule();

  static TeamModule teamModule = TeamModule();

  static ProgramModule programModule = ProgramModule();

  static DashboardModule dashboardModule = DashboardModule();

  static TrackedEntityInstanceModule trackerModule =
      TrackedEntityInstanceModule();

  static AggregateModule aggregateModule = AggregateModule();

  static NotificationModule notificationModule = NotificationModule();

  static OptionModule optionModule = OptionModule();

  static FileResourceModule fileResourceModule = FileResourceModule();

  /////// Data Run
  static DUserModule userModule = DUserModule();

  static WarehouseModule warehouseModule = WarehouseModule();

  static DOrganisationUnitModule organisationUnitModuleD =
      DOrganisationUnitModule();

  static DProjectModule projectModuleD = DProjectModule();

  static DActivityModule activityModuleD = DActivityModule();

  static DAssignmentModule assignmentModuleD = DAssignmentModule();

  static DTeamModule teamModuleD = DTeamModule();

  static ItnsVillageModule itnsVillageModule = ItnsVillageModule();

  static IccmModule iccmModule = IccmModule();
}
