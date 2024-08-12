import 'dart:convert';

import 'package:d2_remote/core/annotations/column.annotation.dart';
import 'package:d2_remote/core/annotations/entity.annotation.dart';
import 'package:d2_remote/core/annotations/reflectable.annotation.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'orgUnit', apiResourceName: 'orgUnits')
class OrgUnit extends IdentifiableEntity {
  @Column(nullable: true)
  String? path;

  @Column(nullable: true)
  String? parentUid;

  @Column(nullable: true, type: ColumnType.INTEGER)
  int? level;

  @Column(nullable: false, type: ColumnType.TEXT)
  Map<String, String> label;

  // @Column(nullable: true, type: ColumnType.TEXT)
  // Geometry? geometry;

  @Column(nullable: true)
  Object? geometry;

  @Column(name: 'parent', nullable: true)
  Object? parent;

  // NMC
  @Column(nullable: true, type: ColumnType.TEXT)
  List<OrgUnit>? ancestors;

  OrgUnit(
      {required String id,
      required String uid,
      required String name,
      String? displayName,
      required this.path,
      this.parentUid,
      this.geometry,
      required this.label,
      required this.level,
      this.parent,
      this.ancestors,
      String? code,
      required dirty})
      : super(
            uid: uid,
            id: id,
            name: name,
            displayName: displayName,
            code: code,
            dirty: dirty);

  factory OrgUnit.fromJson(Map<String, dynamic> json) {
    final parent = json['parent'];

    final jsonEncoder = JsonEncoder();
    // final ancestors = jsonEncoder.convert(json['ancestors'] ?? []);

    final ancestors = json['ancestors'] != null
        ? (parseDynamicList(json['ancestors']) as List)
            .map((ancestor) => OrgUnit.fromJson(ancestor))
            .toList()
        : null;

    return OrgUnit(
        id: json['uid'],
        uid: json['uid'],
        code: json['code'],
        name: json['name'],
        path: json['path'],
        displayName: json['displayName'],
        parentUid: json['parentUid'],
        ancestors: ancestors,
        parent: parent != null
            ? parent is String
                ? parent
                : parent['uid'] ?? parent
            : null,
        label: json['label'] != null
            ? Map<String, String>.from(json['label'] is String
                ? jsonDecode(json['label'])
                : json['label'])
            : {"en": json['name']},
        // geometry: geometry,
        geometry: json['geometry']?.toString() ?? null,
        level: json['level'],
        dirty: json['dirty'] ?? false);
  }

  Map<String, dynamic> toJson() {
    final data = {
      'id': uid,
      'uid': uid,
      'code': code,
      'name': name,
      'path': path,
      'displayName': displayName,
      'label': jsonEncode(label),
      // 'ancestors': this.ancestors,
      'ancestors': ancestors != null
          ? jsonEncode(ancestors!.map((ancestor) => ancestor.toJson()).toList())
          : null,

      'geometry': this.geometry,
      // 'geometry': this.geometry != null
      //     ? jsonEncode(this.geometry?.geometryData)
      //     : null,
      'level': level,
      'dirty': dirty,
    };

    if (this.parent != null) {
      data['parent'] = this.parent;
    }

    return data;
  }
}
