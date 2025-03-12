import 'package:d_sdk/d_sdk.dart';
import 'package:d_sdk/modules/auth/user/entities/d_user.entity.dart';
import 'package:d_sdk/modules/auth/user/queries/d_user.query.dart';
import 'package:d_sdk/modules/metadatarun/activity/queries/d_activity.query.dart';
import 'package:d_sdk/modules/metadatarun/project/queries/d_project.query.dart';
import 'package:d_sdk/modules/metadatarun/teams/entities/d_team.entity.dart';
import 'package:d_sdk/modules/metadatarun/teams/queries/d_team.query.dart';
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
  UserQuery userQuery = UserQuery(database: db);

  final user = User.fromApi(userData);
  await userQuery.setData(user).save();

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/teams?paged=false',
    (server) => server.reply(200, sampleTeams),
  );
  dioAdapter.onGet(
    'http://localhost:8080/api/custom/teams/managed?paged=false',
    (server) => server.reply(200, sampleTeams),
  );
  final teamQuery = TeamQuery(database: db);
  await teamQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<Team> teams = await D2Remote.teamModuleD.team.get();

  test('should store all incoming teams metadata', () {
    expect(teams.length, 2);
  });
}
