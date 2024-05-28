import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/data_run/assignment/entities/d_assignment.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_team.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/queries/d_user_team.query.dart';
import 'package:d2_remote/modules/data_run/teams/entities/d_team.entity.dart';
import 'package:d2_remote/shared/models/request_progress.model.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:d2_remote/shared/utilities/http_client.util.dart';
import 'package:dio/dio.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DTeamQuery extends BaseQuery<DTeam> {
  DTeamQuery({Database? database}) : super(database: database);

  DTeamQuery withAssignments() {
    final assignment = Repository<DAssignment>();
    final Column? relationColumn = assignment.columns.firstWhere((column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'assignments',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(DAssignment) as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(DAssignment) as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  Future<List<DTeam>>? getUserTeams() async {
    final List<DUserTeam> userTeams = await DUserTeamQuery().get();

    final userTeamIds = userTeams.map((userTeam) => userTeam.team).toList();

    return this.byIds(userTeamIds).get();
  }

  @override
  Future<List<DTeam>?> download(Function(RequestProgress, bool) callback,
      {Dio? dioTestClient}) async {
    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message: 'Fetching user assigned Teams....',
            status: '',
            percentage: 0),
        false);

    final List<DUserTeam> userTeams = await DUserTeamQuery().get();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message: '${userTeams.length} user assigned Teams found!',
            status: '',
            percentage: 25),
        false);

    this.whereIn(
        attribute: 'id',
        values: userTeams.map((userTeam) => userTeam.team).toList(),
        merge: false);

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                'Downloading ${this.apiResourceName?.toLowerCase()} from the server....',
            status: '',
            percentage: 26),
        false);

    final dhisUrl = await this.dataRunUrl();

    final response = await HttpClient.get(dhisUrl,
        database: this.database, dioTestClient: dioTestClient);

    List data = response.body[this.apiResourceName]?.toList();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${data.length} ${this.apiResourceName?.toLowerCase()} downloaded successfully',
            status: '',
            percentage: 50),
        false);

    this.data = data.map((dataItem) {
      dataItem['dirty'] = false;
      return DTeam.fromJson(dataItem);
    }).toList();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                'Saving ${data.length} ${this.apiResourceName?.toLowerCase()} into phone database...',
            status: '',
            percentage: 51),
        false);

    await this.save();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${data.length} ${this.apiResourceName?.toLowerCase()} successfully saved into the database',
            status: '',
            percentage: 100),
        true);

    return this.data;
  }
}
