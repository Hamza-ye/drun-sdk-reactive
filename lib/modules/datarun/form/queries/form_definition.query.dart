import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_definition.entity.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_org_unit.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:reflectable/mirrors.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
class FormDefinitionQuery extends BaseQuery<FormDefinition> {
  FormDefinitionQuery({Database? database}) : super(database: database);
  FormDefinitionQuery withOrganisationUnit() {
    final formOrgUnit = Repository<FormOrgUnit>();
    final Column? relationColumn = formOrgUnit.columns.firstWhere(
            (column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'formOrgUnits',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(FormOrgUnit)
              as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(FormOrgUnit)
              as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  int? version;
  String? form;

  FormDefinitionQuery byVersion(int version) {
    this.version = version;
    return this.where(attribute: 'version', value: version);
  }

  FormDefinitionQuery byForm(String form) {
    this.form = form;
    return this.where(attribute: 'form', value: form);
  }
}
