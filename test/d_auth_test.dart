import 'package:d2_remote/modules/auth/user/models/login-response.model.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/d2_remote.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/data_run_samples/d_auth-token.sample.dart';
import '../sample/data_run_samples/d_current_user.sample.dart';
import 'd_auth_test.reflectable.dart';

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

  await D2Remote.initialize(
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

  final isAuthenticated = await D2Remote.isAuthenticated(
      sharedPreferenceInstance: SharedPreferences.getInstance());

  test('should not be authenticated if database is not set', () {
    expect(isAuthenticated, false);
  });

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/authenticateBasic',
    (server) => server.reply(200, dCorrectSampleAuthToken),
  );

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/account',
    (server) => server.reply(200, dUserData),
  );

  final onlineLogIn = await D2Remote.logInDataRun(
      username: 'admin',
      password: 'district',
      url: 'http://localhost:8080',
      databaseFactory: databaseFactoryFfi,
      dioTestClient: dio);

  final user = await D2Remote.userModule.user.withAuthorities().getOne();

  test('should successfully authenticate user on online login', () {
    expect(onlineLogIn, LoginResponseStatus.ONLINE_LOGIN_SUCCESS);
  });

  test('should return appropriate user roles for a user', () {
    expect(user?.authorities?.length, 2);
  });

  final logOutResponse = await D2Remote.logOut();

  final isAuthenticatedAfterLogout = await D2Remote.isAuthenticated(
      sharedPreferenceInstance: SharedPreferences.getInstance());

  test('should successfully log out user', () {
    expect(logOutResponse, true);
    expect(isAuthenticatedAfterLogout, false);
  });
}
