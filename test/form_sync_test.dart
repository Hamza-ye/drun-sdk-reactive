import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/d_user.query.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_version.entity.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_template.entity.dart';
import 'package:d2_remote/modules/datarun/form/queries/form_template.query.dart';
import 'package:d2_remote/modules/datarun/form/queries/form_version.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/all_samples.dart';
import 'form_sync_test.reflectable.dart';

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

  dioAdapter.onGet(
    'http://localhost:8080/api/custom/dataForm?paged=false',
    (server) => server.reply(200, sampleAllForms),
  );
  final formTemplateQuery = FormTemplateQuery(database: db);
  await formTemplateQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<FormTemplate> formTemplates =
      await D2Remote.formModule.formTemplate.withFormVersions().get();

  List<FormVersion> formVersions =
      await D2Remote.formModule.formTemplateV.get();

  test('should store all incoming formTemplates and formVersions metadata', () {
    expect(formTemplates.length, 2);
    expect(formVersions.length, 2);
  });
}
