import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_authority.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_organisation_unit.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_role.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_team.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

class UserQuery extends BaseQuery<User> {
  UserQuery({Database? database}) : super(database: database);

  UserQuery withOrganisationUnit() {
    final userOrganisationUnit = Repository<UserOrganisationUnit>();
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
              AnnotationReflectable.reflectType(UserOrganisationUnit)
                  as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(UserOrganisationUnit)
                  as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  UserQuery withTeam() {
    final userTeam = Repository<UserTeam>();
    final Column? relationColumn = userTeam.columns.firstWhere(
            (column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'teams',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(UserTeam)
              as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(UserTeam)
              as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  UserQuery withAuthorities() {
    final userAuthority = Repository<UserAuthority>();
    final Column? relationColumn = userAuthority.columns.firstWhere((column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'authorities',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(UserAuthority) as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(UserAuthority) as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }

  UserQuery withRoles() {
    final userRole = Repository<UserRole>();
    final Column? relationColumn = userRole.columns.firstWhere((column) =>
        column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'roles',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(UserRole) as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(UserRole) as ClassMirror,
              false));
      this.relations.add(relation);
    }

    return this;
  }
}
