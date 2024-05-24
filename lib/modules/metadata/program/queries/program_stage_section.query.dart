import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_stage_section.entity.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_stage_section_data_element.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

class ProgramStageSectionQuery extends BaseQuery<ProgramStageSection> {
  ProgramStageSectionQuery({Database? database}) : super(database: database);
  String? programStage;

  ProgramStageSectionQuery byProgramStage(String programStage) {
    this.programStage = programStage;
    return where(attribute: 'programStage', value: programStage);
  }

  ProgramStageSectionQuery withDataElements() {
    final programStageSectionDataElement =
        Repository<ProgramStageSectionDataElement>();
    final Column? relationColumn = programStageSectionDataElement.columns
        .firstWhere((column) =>
            column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'dataElements',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(ProgramStageSectionDataElement)
                  as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(ProgramStageSectionDataElement)
                  as ClassMirror,
              false));

      this.relations.add(relation);
    }

    return this;
  }
}
