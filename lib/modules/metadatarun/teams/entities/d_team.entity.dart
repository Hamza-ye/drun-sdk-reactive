import 'dart:convert';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/entity_scope.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/team_form_permission.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dTeam', apiResourceName: 'teams')
class DTeam extends IdentifiableEntity {
  // @ManyToOne(table: DActivity, joinColumnName: 'activity')
  // dynamic activity;
  @Column(nullable: true)
  String? activity;

  @Column(type: ColumnType.BOOLEAN)
  bool disabled;

  @Column(type: ColumnType.BOOLEAN)
  bool deleteClientData;

  @Column(nullable: true, type: ColumnType.TEXT)
  Map<String, Object?> properties = {};

  @Column(nullable: true, type: ColumnType.TEXT)
  List<TeamFormPermission> formPermissions = [];

  @Column(nullable: true, type: ColumnType.TEXT)
  EntityScope? scope;

  DTeam(
      {String? id,
      required String uid,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      String? shortName,
      String? code,
      String? displayName,
      this.activity,
      this.disabled = true,
      this.deleteClientData = false,
      // this.managedTeams,
      Map<String, Object?> properties = const {},
      List<TeamFormPermission> formPermissions = const [],
      this.scope,
      required dirty})
      : super(
            uid: uid,
            id: id,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty) {
    this.properties.addAll(properties);
    this.formPermissions.addAll(formPermissions);
  }

  factory DTeam.fromJson(Map<String, dynamic> json) {
    final scope = EntityScope.getType(json['entityScope']);

    final formPermissions = json['formPermissions'] != null
        ? (parseDynamicJson(json['formPermissions']) as List)
            .map((permissions) => TeamFormPermission.fromJson(permissions))
            .toList()
        : <TeamFormPermission>[];

    return DTeam(
        id: json['id'].toString(),
        uid: json['uid'],
        name: json['name'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'] ?? json['name'],
        activity: json['activity'] != null
            ? json['activity'] is String
                ? json['activity']
                : json['activity']['uid']
            : null,
        properties: json['properties'] != null
            ? Map<String, Object>.from(json['properties'] is String
                ? jsonDecode(json['properties'])
                : json['properties'])
            : {},
        disabled: json['disabled'] ?? false,
        deleteClientData: json['deleteClientData'] ?? false,
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        // managedTeams: json['managedTeams'],
        formPermissions: formPermissions,
        scope: scope,
        dirty: json['dirty']);
  }

  factory DTeam.fromApi(Map<String, dynamic> jsonData) {
    final scope = EntityScope.getType(jsonData['entityScope']);

    final formPermissions = jsonData['formPermissions'] != null
        ? (parseDynamicJson(jsonData['formPermissions']) as List)
            .map((permissions) => TeamFormPermission.fromJson(permissions))
            .toList()
        : <TeamFormPermission>[];

    return DTeam(
        id: jsonData['id'].toString(),
        uid: jsonData['uid'],
        name: jsonData['name'],
        shortName: jsonData['shortName'],
        code: jsonData['code'],
        displayName: jsonData['displayName'] ?? jsonData['name'],
        activity: jsonData['activity'],
        disabled: jsonData['disabled'] ?? false,
        deleteClientData: jsonData['deleteClientData'] ?? false,
        properties: jsonData['properties'] != null
            ? Map<String, Object>.from(jsonData['properties'] is String
                ? jsonDecode(jsonData['properties'])
                : jsonData['properties'])
            : {},
        // teamType: jsonData['teamType'],
        createdDate: jsonData['createdDate'],
        lastModifiedDate: jsonData['lastModifiedDate'],
        // managedTeams: jsonData['managedTeams']
        //         ?.map<ManagedTeam>((team) => ManagedTeam(
        //             id: team['uid'],
        //             name: team['name'],
        //             code: team['code'],
        //             managedTeam: team['uid'],
        //             team: jsonData['uid'],
        //             dirty: jsonData['dirty'] ?? false))
        //         .toList() ??
        //     [],
        formPermissions: formPermissions,
        scope: scope,
        dirty: jsonData['dirty'] ?? false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['activity'] = this.activity;
    data['disabled'] = this.disabled;
    data['deleteClientData'] = this.deleteClientData;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    // data['managedTeams'] = this.managedTeams;
    data['properties'] = jsonEncode(this.properties);
    data['formPermissions'] = jsonEncode((this
        .formPermissions
        .map((permission) => permission.toJson())
        .toList()));
    data['scope'] = this.scope?.name;
    data['dirty'] = this.dirty;
    return data;
  }
}
