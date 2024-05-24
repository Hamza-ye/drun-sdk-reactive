import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/attribute_reserved_value.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/tracked-entity.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/tracked_entity_attribute_value.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/attribute_reserved_value.query.dart';
import 'package:d2_remote/modules/engine/program_rule/models/tracker_rule_result.model.dart';
import 'package:d2_remote/modules/engine/program_rule/tracker_rule_engine.dart';
import 'package:d2_remote/modules/engine/shared/utilities/data_value_entities.util.dart';
import 'package:d2_remote/modules/engine/program_rule/utilities/program_rule_engine.util.dart';
import 'package:d2_remote/modules/metadata/program/entities/program.entity.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_rule.entity.dart';
import 'package:d2_remote/modules/metadata/program/queries/program.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_rule.query.dart';
import 'package:d2_remote/modules/activity_management/project/entities/project.entity.dart';
import 'package:d2_remote/modules/activity_management/project/queries/project.query.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/current_user.sample.dart';
import '../sample/program.sample.dart';
import '../sample/program_rule.sample.dart';
import '../sample/reserved_values.sample.dart';
import '../sample/project.sample.dart';
import 'program_rule_execution_test.reflectable.dart';

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
  userData['username'] = 'admin';
  userData['baseUrl'] = 'https://play.dhis2.org/2.35.11';
  final user = User.fromApi(userData);

  await userQuery.setData(user).save();

  List<Program> programs = [];
  samplePrograms['programs'].forEach((program) {
    programs.add(Program.fromJson({...program, 'dirty': false}));
  });

  await ProgramQuery().setData(programs).save();

  List<ProgramRule> programRules = [];
  sampleProgramRules['programRules'].forEach((programRule) {
    programRules.add(ProgramRule.fromJson({...programRule, 'dirty': false}));
  });

  await ProgramRuleQuery().setData(programRules).save();

  // NMCP /////////
  List<Project> projects = [];
  sampleProjects['projects'].forEach((project) {
    projects.add(Project.fromJson({...project, 'dirty': false}));
  });

  await ProjectQuery().setData(projects).save();
  //////////////////

  List<AttributeReservedValue> attributeResrvedValues = [];
  sampleReservedValues.forEach((reservedValue) {
    attributeResrvedValues.add(
        AttributeReservedValue.fromJson({...reservedValue, 'dirty': false}));
  });

  await AttributeReservedValueQuery().setData(attributeResrvedValues).save();

  final TrackedEntityInstance trackedEntityInstance = await D2Remote
      .trackerModule.trackedEntityInstance
      .byActivity('ActzpKrYNg8')
      .byProgram('IpHINAT79UW')
      .byOrgUnit('fnei293faf')
      .create();

  final trackedEntityAttributeValues = [
    TrackedEntityAttributeValue(
        dirty: true,
        attribute: 'w75KJ2mc4zz',
        trackedEntityInstance: trackedEntityInstance.trackedEntityInstance,
        value: 'First name'),
    TrackedEntityAttributeValue(
        dirty: true,
        attribute: 'cejWyOfXge6',
        trackedEntityInstance: trackedEntityInstance.trackedEntityInstance,
        value: 'Female')
  ];

  await D2Remote.trackerModule.trackedEntityAttributeValue
      .setData(trackedEntityAttributeValues)
      .save();

  final TrackedEntityInstance createdInstance = await D2Remote
      .trackerModule.trackedEntityInstance
      .byId(trackedEntityInstance.id as String)
      .withEnrollments()
      .withAttributes()
      .getOne();

  final dataValueEntities = DataValueEntities.fromAttributeValues(
      createdInstance.attributes as List<TrackedEntityAttributeValue>);

  final createdProgramRules =
      await D2Remote.programModule.programRule.withActions().get();

  final createdProgramRuleVariables =
      await D2Remote.programModule.programRuleVariable.get();

  final programRuleActions = ProgramRuleEngine.execute(
      dataValueEntities: dataValueEntities,
      programRules: createdProgramRules,
      programRuleVariables: createdProgramRuleVariables);

  final lastNameRuleAction = programRuleActions
      .lastWhere((element) => element.trackedEntityAttribute == 'zDhUuAYrxNC');

  test('should return action with signal to assign last name', () {
    expect(lastNameRuleAction.programRuleActionType, 'ASSIGN');
    expect(lastNameRuleAction.data, 'Last Name');
  });

  final secondTrackedEntityAttributeValue = TrackedEntityAttributeValue(
      dirty: true,
      attribute: 'cejWyOfXge6',
      trackedEntityInstance: trackedEntityInstance.trackedEntityInstance,
      value: 'Male');

  await D2Remote.trackerModule.trackedEntityAttributeValue
      .setData(secondTrackedEntityAttributeValue)
      .save();

  final TrackedEntityInstance updatedInstance = await D2Remote
      .trackerModule.trackedEntityInstance
      .byId(trackedEntityInstance.id as String)
      .withEnrollments()
      .withAttributes()
      .getOne();

  final secondDataValueEntities = DataValueEntities.fromAttributeValues(
      updatedInstance.attributes as List<TrackedEntityAttributeValue>);

  final secondProgramRuleActions = ProgramRuleEngine.execute(
      dataValueEntities: secondDataValueEntities,
      programRules: createdProgramRules,
      programRuleVariables: createdProgramRuleVariables);

  final secondLastNameRuleAction = secondProgramRuleActions
      .lastWhere((element) => element.trackedEntityAttribute == 'zDhUuAYrxNC');

  test('should return action with signal not to assign last name', () {
    expect(secondLastNameRuleAction.programRuleActionType, '');
  });

  await D2Remote.trackerModule.trackedEntityAttributeValue
      .setData(TrackedEntityAttributeValue(
          dirty: true,
          attribute: 'cejWyOfXge6',
          trackedEntityInstance: updatedInstance.trackedEntityInstance,
          value: 'Female'))
      .save();

  TrackerRuleResult trackerRuleResult = await TrackerRuleEngine.execute(
    trackedEntityInstance: createdInstance,
    program: 'IpHINAT79UW',
  );

  final lastNameAttributeValue = trackerRuleResult
      .trackedEntityInstance.attributes
      ?.lastWhere((attribute) => attribute.attribute == 'zDhUuAYrxNC');

  test('should assign last name', () {
    expect(lastNameAttributeValue?.value, 'Last Name');
  });
}
