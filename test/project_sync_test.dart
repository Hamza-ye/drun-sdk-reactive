import 'package:d_sdk/d_sdk.dart';
import 'package:d_sdk/modules/auth/user/entities/d_user.entity.dart';
import 'package:d_sdk/modules/auth/user/queries/d_user.query.dart';
import 'package:d_sdk/modules/metadatarun/project/entities/d_project.entity.dart';
import 'package:d_sdk/modules/metadatarun/project/queries/d_project.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/all_samples.dart';
import 'project_sync_test.reflectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await D2Remote.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  UserQuery userQuery = UserQuery(database: db);
  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['login'] = 'admin';
  userData['baseUrl'] = 'http://localhost:8080';
  final user = User.fromApi(userData);
  await userQuery.setData(user).save();

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/projects?paged=false',
    (server) => server.reply(200, sampleProjects),
  );

  ProjectQuery projectQuery = ProjectQuery(database: db);
  await projectQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<Project> projects = await D2Remote.projectModuleD.project.get();

  test('should store all incoming projects metadata', () {
    expect(projects.length, 5);
  });
}
