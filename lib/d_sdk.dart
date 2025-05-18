library d_sdk;

import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:d_sdk/user_session/session_repository.dart';

import 'database/dao/dao.dart';

class DSdk {
  // unauthenticated scope
  static SessionRepository get userSessionRepository =>
      rSdkLocator<SessionRepository>();

  // authenticated scope dependencies
  static DbManager get dbManager => rSdkLocator<DbManager>();

  static AppDatabase get db => dbManager.db;

  static DataSubmissionDatasource get dataSubmissionDataSource =>
      rSdkLocator<DataSubmissionDatasource>();

  // db DAOs:
  static ActivitiesDao get activity => db.activitiesDao;

  static AssignmentsDao get assignment => db.assignmentsDao;

  static OrgUnitsDao get orgUnit => db.orgUnitsDao;

  static TeamsDao get team => db.teamsDao;

  static UsersDao get user => db.usersDao;

  static FormTemplateVersionsDao get formTemplate =>
      db.formTemplateVersionsDao;

  static DataSubmissionsDao get dataSubmission => db.dataSubmissionsDao;

  static DataElementsDao get dataElement => db.dataElementsDao;

  static DataOptionSetsDao get dataOptionSet => db.dataOptionSetsDao;

  static DataValuesDao get dataValue => db.dataValuesDao;

  static RepeatInstancesDao get repeatInstance => db.repeatInstancesDao;
}
