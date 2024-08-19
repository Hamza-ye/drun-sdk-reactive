// import 'package:d2_remote/core/annotations/index.dart';
// import 'package:d2_remote/modules/datarun/form/entities/form_definition.entity.dart';
// import 'package:d2_remote/shared/entities/identifiable.entity.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'formOrgUnit', apiResourceName: 'formOrgUnits')
// class FormOrgUnit extends IdentifiableEntity {
//   @Column()
//   final String orgUnit;
//
//   @ManyToOne(joinColumnName: 'formDefinition', table: FormDefinition)
//   dynamic formDefinition;
//
//   FormOrgUnit(
//       {required String id,
//       required String uid,
//       required String name,
//       required this.orgUnit,
//       required this.formDefinition,
//       required bool dirty})
//       : super(id: id, name: name, dirty: dirty);
//
//   factory FormOrgUnit.fromJson(Map<String, dynamic> json) {
//     return FormOrgUnit(
//         id: json['id'],
//         uid: json['uid'],
//         name: json['uid'],
//         orgUnit: json['orgUnit'],
//         formDefinition: json['formDefinition'],
//         dirty: json['dirty']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['uid'] = this.uid;
//     data['name'] = this.name;
//     data['orgUnit'] = this.orgUnit;
//     data['formDefinition'] = this.formDefinition;
//     data['dirty'] = this.dirty;
//     return data;
//   }
// }
