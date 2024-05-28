import 'package:d2_remote/modules/activity/queries/d_activity.query.dart';
import 'package:d2_remote/modules/assignment/queries/d_assignment.query.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/data_run.dart';
import 'package:d2_remote/modules/itns/entities/itns_village.entity.dart';
import 'package:d2_remote/modules/itns/queries/itns_village.query.dart';
import 'package:d2_remote/modules/itns/queries/progress_status.query.dart';
import 'package:d2_remote/modules/project/queries/d_project.query.dart';
import 'package:d2_remote/modules/teams/queries/d_team.query.dart';
import 'package:d2_remote/modules/warehouse/queries/warehouse.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../sample/data_run_samples/d_activity.sample.dart';
import '../../sample/data_run_samples/d_assignment.sample.dart';
import '../../sample/data_run_samples/d_current_user.sample.dart';
import '../../sample/data_run_samples/d_itns_village.sample.dart';
import '../../sample/data_run_samples/d_progress_status.sample.dart';
import '../../sample/data_run_samples/d_project.sample.dart';
import '../../sample/data_run_samples/d_team.sample.dart';
import '../../sample/data_run_samples/d_warehouse.sample.dart';
import 'team_query_test.reflectable.dart';

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

  dUserData['password'] = 'district';
  dUserData['isLoggedIn'] = true;
  dUserData['login'] = 'admin';
  dUserData['baseUrl'] = 'http://localhost:8080';
  DUserQuery userQuery = DUserQuery(database: db);

  final user = DUser.fromApi(dUserData);
  await userQuery.setData(user).save();

  dioAdapter.onGet(
    'http://localhost:8080/api/projects?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleProjects),
  );
  DProjectQuery projectQuery = DProjectQuery(database: db);
  await projectQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/activities?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleActivities),
  );
  final activityQuery = DActivityQuery(database: db);
  await activityQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/warehouses?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleWarehouses),
  );
  final warehouseQuery = WarehouseQuery(database: db);
  await warehouseQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/teams?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleTeams),
  );
  final teamQuery = DTeamQuery(database: db);
  await teamQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/assignments?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleAssignments),
  );
  final assignmentQuery = DAssignmentQuery(database: db);
  await assignmentQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/progressStatuses?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleProgressStatuses),
  );
  final progressStatusQuery = ProgressStatusQuery(database: db);
  await progressStatusQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/itnsVillages?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleItnsVillages),
  );
  final itnsVillageQuery = ItnsVillageQuery(database: db);
  await itnsVillageQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<ItnsVillage> itnsVillages =
      await DRun.itnsVillageModule.itnsVillage.get();

  test('should store all incoming itnsVillages metadata', () {
    expect(itnsVillages.length, 15);
  });
}
