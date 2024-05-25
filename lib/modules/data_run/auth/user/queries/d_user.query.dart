import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/auth/user/entities/user_team.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_authority.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_organisation_unit.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

class DUserQuery extends BaseQuery<DUser> {
  DUserQuery({Database? database}) : super(database: database);

  DUserQuery withOrganisationUnit() {
    final userOrganisationUnit = Repository<DUserOrganisationUnit>();
    final Column? relationColumn = userOrganisationUnit.columns.firstWhere(
        (column) =>
            column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'organisationUnits',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(DUserOrganisationUnit)
                  as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(DUserOrganisationUnit)
                  as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  DUserQuery withTeam() {
    final userTeam = Repository<UserTeam>();
    final Column? relationColumn = userTeam.columns.firstWhere((column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'teams',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(UserTeam) as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(UserTeam) as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  DUserQuery withAuthorities() {
    final userAuthority = Repository<DUserAuthority>();
    final Column? relationColumn = userAuthority.columns.firstWhere((column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'authorities',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(DUserAuthority) as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(DUserAuthority) as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

// DUserQuery withRoles() {
//   final userRole = Repository<DUserRole>();
//   final Column? relationColumn = userRole.columns.firstWhere((column) =>
//       column.relation?.referencedEntity?.tableName == this.tableName);
//
//   if (relationColumn != null) {
//     ColumnRelation relation = ColumnRelation(
//         referencedColumn: relationColumn.relation?.attributeName,
//         attributeName: 'roles',
//         primaryKey: this.primaryKey?.name,
//         relationType: RelationType.OneToMany,
//         referencedEntity: Entity.getEntityDefinition(
//             AnnotationReflectable.reflectType(UserRole) as ClassMirror),
//         referencedEntityColumns: Entity.getEntityColumns(
//             AnnotationReflectable.reflectType(UserRole) as ClassMirror,
//             false));
//     this.relations.add(relation);
//   }
//
//   return this;
// }
}
