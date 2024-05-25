import 'package:d2_remote/modules/data_run/data_run.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/auth/user/models/login-response.model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../sample/d_current_user.sample.dart';
import '../../sample/d_auth-token.sample.dart';
import '../auth_test.reflectable.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences.setMockInitialValues({});
  // initializeReflectable();
  // sqfliteFfiInit();

  // await D2Remote.initialize(databaseFactory: databaseFactoryFfi);

  // var databaseFactory = databaseFactoryFfi;

  // var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await DRun.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  DUserQuery userQuery = DUserQuery(database: db);

  DUser? userResponse;
  try {
    userResponse = await userQuery.getOne();
  } catch (e) {}

  test('should not initialize database if no database name is supplied', () {
    expect(userResponse, null);
  });

  final isAuthenticated = await DRun.isAuthenticated(
      sharedPreferenceInstance: SharedPreferences.getInstance());

  test('should not be authenticated if database is not set', () {
    expect(isAuthenticated, false);
  });

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/authenticate',
        (server) => server.reply(200, dCorrectSampleAuthToken),
  );

  dioAdapter.onGet(
    'http://localhost:8080/api/account',
    (server) => server.reply(200, dUserData),
  );

  final onlineLogIn = await DRun.logIn(
      username: 'admin',
      password: 'district',
      url: 'http://localhost:8080',
      databaseFactory: databaseFactoryFfi,
      dioTestClient: dio);

  final user =
      await DRun.userModule.user.withAuthorities().getOne();

  test('should successfully authenticate user on online login', () {
    expect(onlineLogIn, LoginResponseStatus.ONLINE_LOGIN_SUCCESS);
  });

  test('should return appropriate user roles for a user', () {
    expect(user?.authorities?.length, 2);
  });

  final logOutResponse = await DRun.logOut();

  final isAuthenticatedAfterLogout = await DRun.isAuthenticated(
      sharedPreferenceInstance: SharedPreferences.getInstance());

  test('should successfully log out user', () {
    expect(logOutResponse, true);
    expect(isAuthenticatedAfterLogout, false);
  });
}
