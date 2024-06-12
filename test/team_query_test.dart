import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/metadatarun/activity/queries/d_activity.query.dart';
import 'package:d2_remote/modules/metadatarun/project/queries/d_project.query.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';
import 'package:d2_remote/modules/metadatarun/teams/queries/d_team.query.dart';
import 'package:d2_remote/modules/metadatarun/warehouse/queries/warehouse.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/all_samples.dart';
import 'team_query_test.reflectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await D2Remote.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['login'] = 'admin';
  userData['baseUrl'] = 'http://localhost:8080';
  DUserQuery userQuery = DUserQuery(database: db);

  final user = DUser.fromApi(userData);
  await userQuery.setData(user).save();

  // dioAdapter.onGet(
  //   'http://localhost:8080/api/custom/projects?paging=false&eagerload=true',
  //   (server) => server.reply(200, sampleProjects),
  // );
  // DProjectQuery projectQuery = DProjectQuery(database: db);
  // await projectQuery.download((progress, complete) {
  //   print(progress.message);
  // }, dioTestClient: dio);
  //
  // dioAdapter.onGet(
  //   'http://localhost:8080/api/custom/activities?paging=false&eagerload=true',
  //   (server) => server.reply(200, sampleActivities),
  // );
  // final activityQuery = DActivityQuery(database: db);
  // await activityQuery.download((progress, complete) {
  //   print(progress.message);
  // }, dioTestClient: dio);
  //
  // dioAdapter.onGet(
  //   'http://localhost:8080/api/custom/warehouses?paging=false&eagerload=true',
  //   (server) => server.reply(200, sampleWarehouses),
  // );
  // final warehouseQuery = WarehouseQuery(database: db);
  // await warehouseQuery.download((progress, complete) {
  //   print(progress.message);
  // }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/teams?paging=false&eagerload=true',
    (server) => server.reply(200, sampleTeams),
  );
  final teamQuery = DTeamQuery(database: db);
  await teamQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<DTeam> teams = await D2Remote.teamModuleD.team.get();

  test('should store all incoming teams metadata', () {
    expect(teams.length, 2);
  });
}
