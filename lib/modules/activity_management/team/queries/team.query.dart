import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/auth/user/entities/user_team.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user_team.query.dart';
import 'package:d2_remote/modules/activity_management/assignment/entities/assignment.entity.dart';
import 'package:d2_remote/modules/activity_management/team/entities/team.entity.dart';
import 'package:d2_remote/shared/models/request_progress.model.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:d2_remote/shared/utilities/http_client.util.dart';
import 'package:dio/dio.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class TeamQuery extends BaseQuery<Team> {
  TeamQuery({Database? database}) : super(database: database);

  TeamQuery withAssignments() {
    final assignment = Repository<Assignment>();
    final Column? relationColumn = assignment.columns.firstWhere((column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'assignments',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(Assignment) as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(Assignment) as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  Future<List<Team>>? getUserTeams() async {
    final List<UserTeam> userTeams = await UserTeamQuery().get();

    final userTeamIds = userTeams.map((userTeam) => userTeam.team).toList();

    return this.byIds(userTeamIds).get();
  }

  @override
  Future<List<Team>?> download(Function(RequestProgress, bool) callback,
      {Dio? dioTestClient}) async {
    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message: 'Fetching user assigned Teams....',
            status: '',
            percentage: 0),
        false);

    final List<UserTeam> userTeams = await UserTeamQuery().get();

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

    final dhisUrl = await this.dhisUrl();

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
      return Team.fromJson(dataItem);
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
