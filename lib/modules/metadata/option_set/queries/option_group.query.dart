import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/metadata/option_set/entities/option_group.entity.dart';
import 'package:d2_remote/modules/metadata/option_set/entities/option_group_option.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/annotations/index.dart';

@AnnotationReflectable
@Query(type: QueryType.METADATA)
class OptionGroupQuery extends BaseQuery<OptionGroup> {
  OptionGroupQuery({Database? database}) : super(database: database);

  OptionGroupQuery withOptions() {
    final optionGroupOption = Repository<OptionGroupOption>();
    final Column? relationColumn = optionGroupOption.columns.firstWhere(
        (column) =>
            column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'options',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(OptionGroupOption)
                  as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(OptionGroupOption)
                  as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  // @override
  // Future<List<OptionGroup>?> download(
  //     Function(RequestProgress, bool) callback,
  //     {Dio? dioTestClient}) async {
  //
  //   final dhisUrl = await this.dhisUrl();
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
  //           '${data.length} ${this.apiResourceName?.toLowerCase()} downloaded successfully',
  //           status: '',
  //           percentage: 50),
  //       false);
  //
  //   this.data = data.map((dataItem) {
  //     dataItem['dirty'] = false;
  //     return OptionGroup.fromApi(dataItem);
  //   }).toList();
  //
  //   callback(
  //       RequestProgress(
  //           resourceName: this.apiResourceName as String,
  //           message:
  //           'Saving ${data.length} ${this.apiResourceName?.toLowerCase()} into phone database...',
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
  //           '${data.length} ${this.apiResourceName?.toLowerCase()} successifully saved into the database',
  //           status: '',
  //           percentage: 100),
  //       true);
  //
  //   return this.data;
  // }

  @override
  Future<String> dhisUrl() {
    return Future.value(
        'optionGroups.json?fields=id,name,displayName,shortName,lastUpdated,created,code,dirty,description,optionSet[id,code,name,shortName,displayName,created,lastUpdated],options[id,code,name,description,sortOrder,displayName,lastUpdated,created]&paging=false');
  }
}
