import 'package:d2_remote/modules/activity/queries/d_activity.query.dart';
import 'package:d2_remote/modules/assignment/entities/d_assignment.entity.dart';
import 'package:d2_remote/modules/assignment/queries/d_assignment.query.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/data_run.dart';
import 'package:d2_remote/modules/project/queries/d_project.query.dart';
import 'package:d2_remote/modules/teams/queries/d_team.query.dart';
import 'package:d2_remote/modules/warehouse/queries/warehouse.query.dart';
import 'package:d2_remote/modules/iccm/queries/chv_session.query.dart';
import 'package:d2_remote/modules/iccm/entities/chv_session.entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/data_run_samples/d_activity.sample.dart';
import '../sample/data_run_samples/chv_session.sample.dart';
import '../sample/data_run_samples/d_current_user.sample.dart';
import '../sample/data_run_samples/d_project.sample.dart';
import '../sample/data_run_samples/d_team.sample.dart';
import '../sample/data_run_samples/d_warehouse.sample.dart';
import 'chv_session_sync_test.reflectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await DRun.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/activities?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleActivities),
  );

  dioAdapter.onGet(
    'http://localhost:8080/api/projects?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleProjects),
  );

  dioAdapter.onGet(
    'http://localhost:8080/api/warehouses?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleWarehouses),
  );

  dioAdapter.onGet(
    'http://localhost:8080/api/teams?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleTeams),
  );

  dioAdapter.onGet(
    'http://localhost:8080/api/chvSessions?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleChvSessions),
  );

  dUserData['password'] = 'district';
  dUserData['isLoggedIn'] = true;
  dUserData['login'] = 'admin';
  dUserData['baseUrl'] = 'http://localhost:8080';
  DUserQuery userQuery = DUserQuery(database: db);

  final user = DUser.fromApi(dUserData);
  await userQuery.setData(user).save();

  DProjectQuery projectQuery = DProjectQuery(database: db);
  await projectQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  final activityQuery = DActivityQuery(database: db);
  await activityQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  final warehouseQuery = WarehouseQuery(database: db);
  await warehouseQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  final teamQuery = DTeamQuery(database: db);
  await teamQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  final chvSessionQuery = ChvSessionQuery(database: db);
  await chvSessionQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<ChvSession> chvSessions = await DRun.iccmModule.chvSession.get();

  test('should store all incoming chvSessions metadata', () {
    expect(chvSession.length, 18);
  });
}
