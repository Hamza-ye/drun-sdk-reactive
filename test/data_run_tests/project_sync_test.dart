import 'package:d2_remote/modules/data_run/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/data_run/data_run.dart';
import 'package:d2_remote/modules/data_run/project/entities/d_project.entity.dart';
import 'package:d2_remote/modules/data_run/project/queries/d_project.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../sample/data_run_samples/d_current_user.sample.dart';
import '../../sample/data_run_samples/d_project.sample.dart';
import 'project_sync_test.reflectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await DRun.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  DUserQuery userQuery = DUserQuery(database: db);
  dUserData['password'] = 'district';
  dUserData['isLoggedIn'] = true;
  dUserData['login'] = 'admin';
  dUserData['baseUrl'] = 'http://localhost:8080';
  final user = DUser.fromApi(dUserData);
  await userQuery.setData(user).save();

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/projects?paging=false&eagerload=true',
    (server) => server.reply(200, dSampleProjects),
  );

  DProjectQuery projectQuery = DProjectQuery(database: db);
  await projectQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<DProject> projects = await DRun.projectModule.project.get();

  test('should store all incoming projects metadata', () {
    expect(projects.length, 2);
  });
}
