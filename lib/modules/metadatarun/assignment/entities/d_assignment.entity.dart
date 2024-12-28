import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/entity_scope.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dAssignment', apiResourceName: 'assignments')
class DAssignment extends IdentifiableEntity {
  // @ManyToOne(table: DActivity, joinColumnName: 'activity')
  // dynamic activity;
  @Column(nullable: true)
  String? activity;

  // @ManyToOne(table: DTeam, joinColumnName: 'team')
  // dynamic team;
  @Column(nullable: true)
  String? team;

  // @ManyToOne(table: DOrganisationUnit, joinColumnName: 'organisationUnit')
  // dynamic organisationUnit;
  @Column(nullable: true)
  String? orgUnit;

  @Column(nullable: true)
  String? parent;

  @Column(nullable: true)
  String? startDay;

  @Column(nullable: true)
  String? startDate;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? status;

  @Column(nullable: true, type: ColumnType.TEXT)
  Map<String, Object?> properties = {};

  @Column(nullable: true, type: ColumnType.TEXT)
  List<String> forms = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  EntityScope? scope;

  DAssignment(
      {String? id,
      required String uid,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      String? code,
      List<String> forms = const [],
      Map<String, Object?> properties = const {},
      this.parent,
      this.activity,
      this.orgUnit,
      this.team,
      this.status,
      this.startDay,
      this.startDate,
      this.scope,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty) {
    this.forms.addAll(forms);
    this.properties.addAll(properties);
  }

  factory DAssignment.fromJson(Map<String, dynamic> json) {
    // final team = json['team'] is int ? json['team'] : json['team']['id'];
    // final activity = json['activity'] is int ? json['activity'] : json['activity']['id'];
    // // final organisationUnit = json['organisationUnit'] is int ? json['organisationUnit'] : json['organisationUnit']['id'];
    // final warehouse = json['warehouse'] is int ? json['warehouse'] : json['warehouse']['id'];
    final scope = EntityScope.getType(json['entityScope']);

    final forms = json['forms'] != null
        ? json['forms'].runtimeType == String
            ? jsonDecode(json['forms']).cast<String>()
            : json['forms'].cast<String>()
        : <String>[];

    return DAssignment(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'] ?? json['orgUnit']?['name'],
        properties: json['resourceAllocated'] != null
            ? Map<String, Object?>.from(json['resourceAllocated'] is String
                ? jsonDecode(json['resourceAllocated'])
                : json['resourceAllocated'])
            : {},
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        code: json['code'],
        activity: json['activity'] != null
            ? json['activity'] is String
                ? json['activity']
                : json['activity']['uid']
            : null,
        orgUnit: json['orgUnit'] != null
            ? json['orgUnit'] is String
                ? json['orgUnit']
                : json['orgUnit']['uid']
            : null,
        parent: json['parent'] != null
            ? json['parent'] is String
                ? json['parent']
                : json['parent']['uid']
            : null,
        team: json['team'] != null
            ? json['team'] is String
                ? json['team']
                : json['team']['uid']
            : null,

        //warehouse,
        status: json['status'],
        startDay: json['startDay'],
        startDate: json['startDate'],
        forms: forms,
        scope: scope,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['activity'] = this.activity;
    data['orgUnit'] = this.orgUnit;
    data['team'] = this.team;
    data['status'] = this.status;
    data['properties'] = this.properties;
    data['parent'] = this.parent;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['startDay'] = this.startDay;
    data['startDate'] = this.startDate;
    data['forms'] = this.forms;
    data['scope'] = this.scope?.name;
    data['dirty'] = this.dirty;
    return data;
  }
}
