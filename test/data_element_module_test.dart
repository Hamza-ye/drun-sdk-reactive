import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/metadata/data_element/entities/data_element.entity.dart';
import 'package:d2_remote/modules/metadata/data_element/queries/data_element.query.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'data_element_module_test.reflectable.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  initializeReflectable();
  sqfliteFfiInit();

  await D2Remote.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  DataElementQuery dataElementQuery = D2Remote.dataElementModule.dataElement;

  final dataElement = DataElement(
      id: 'test1',
      name: "Test 1",
      shortName: 'Test 1',
      valueType: 'TEXT',
      aggregationType: 'SUM',
      dirty: false);

  var insertResult = await dataElementQuery.setData(dataElement).save();

  test('should return success if data is inserted into the database', () {
    expect(insertResult, 1);
  });

  var result = await dataElementQuery.byId('test1').getOne();

  test('should return saved details', () {
    expect(result.id, 'test1');
    expect(result.name, 'Test 1');
    expect(result.shortName, 'Test 1');
    expect(result.valueType, 'TEXT');
    expect(result.aggregationType, 'SUM');
  });
}
