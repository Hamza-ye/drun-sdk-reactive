import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/metadatarun/activity/entities/d_activity.entity.dart';
import 'package:d2_remote/modules/metadatarun/activity/queries/d_activity.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/all_samples.dart';
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

  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['login'] = 'admin';
  userData['baseUrl'] = 'http://localhost:8080';
  UserQuery userQuery = UserQuery(database: db);

  final user = User.fromApi(userData);
  await userQuery.setData(user).save();

  // dioAdapter.onGet(
  //   'http://localhost:8080/api/custom/projects?paging=false',
  //   (server) => server.reply(200, sampleProjects),
  // );

  // ProjectQuery projectQuery = ProjectQuery(database: db);
  // await projectQuery.download((progress, complete) {
  //   print(progress.message);
  // }, dioTestClient: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/activities?paged=false',
    (server) => server.reply(200, sampleActivities),
  );
  final activityQuery = ActivityQuery(database: db);
  await activityQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<Activity> activities = await D2Remote.activityModuleD.activity.get();

  test('should store all incoming activities metadata', () {
    expect(activities.length, 3);
  });
}
