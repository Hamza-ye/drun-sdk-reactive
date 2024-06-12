import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class DTeamQuery extends BaseQuery<DTeam> {
  DTeamQuery({Database? database}) : super(database: database);

  DTeamQuery activated() {
    this.where(attribute: 'activated', value: true);
    return this;
  }

// @override
// Future<List<DTeam>?> download(Function(RequestProgress, bool) callback,
//     {Dio? dioTestClient}) async {
//   callback(
//       RequestProgress(
//           resourceName: this.apiResourceName as String,
//           message: 'Fetching user assigned Teams....',
//           status: '',
//           percentage: 0),
//       false);
//
//   final dhisUrl = await this.dataRunUrl();
//
//   final response = await HttpClient.get(dhisUrl,
//       database: this.database, dioTestClient: dioTestClient);
//
//   List data = response.body[this.apiResourceName]?.toList();
//
//   callback(
//       RequestProgress(
//           resourceName: this.apiResourceName as String,
//           message:
//               '${data.length} ${this.apiResourceName?.toLowerCase()} downloaded successfully',
//           status: '',
//           percentage: 50),
//       false);
//
//   this.data = data.map((dataItem) {
//     dataItem['dirty'] = false;
//     return DTeam.fromJson(dataItem);
//   }).toList();
//
//   callback(
//       RequestProgress(
//           resourceName: this.apiResourceName as String,
//           message:
//               'Saving ${data.length} ${this.apiResourceName?.toLowerCase()} into phone database...',
//           status: '',
//           percentage: 51),
//       false);
//
//   await this.save();
//
//   callback(
//       RequestProgress(
//           resourceName: this.apiResourceName as String,
//           message:
//               '${data.length} ${this.apiResourceName?.toLowerCase()} successfully saved into the database',
//           status: '',
//           percentage: 100),
//       true);
//
//   return this.data;
// }
}
