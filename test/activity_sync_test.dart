import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/modules/metadatarun/activity/queries/d_activity.query.dart';
import 'package:d2_remote/modules/metadatarun/project/queries/d_project.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/data_run_samples/d_activity.sample.dart';
import '../sample/data_run_samples/d_current_user.sample.dart';
import '../sample/data_run_samples/d_project.sample.dart';
import 'activity_sync_test.reflectable.dart';

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

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/activities?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleActivities),
  );

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/projects?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleProjects),
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

  List<DActivity> activities = await D2Remote.activityModuleD.activity.get();

  test('should store all incoming activities metadata', () {
    expect(activities.length, 5);
  });
}
