// import 'package:d2_remote/core/annotations/index.dart';
// import 'package:d2_remote/shared/entities/identifiable.entity.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'dashboard', apiResourceName: 'dashboards')
// class Dashboard extends IdentifiableEntity {
//   @Column(type: ColumnType.TEXT, name: 'formname', nullable: true)
//   String? formName;
//
//   @Column(type: ColumnType.INTEGER, name: 'itemcount', nullable: true)
//   int? itemCount;
//
//   Dashboard(
//       {required String id,
//       String? createdDate,
//       String? lastModifiedDate,
//       String? displayName,
//       required String name,
//       this.formName,
//       this.itemCount,
//       required dirty})
//       : super(
//             uid: id,
//             name: name,
//             createdDate: createdDate,
//             displayName: displayName,
//             lastModifiedDate: lastModifiedDate,
//             dirty: dirty);
//
//   factory Dashboard.fromJson(Map<String, dynamic> json) {
//     return Dashboard(
//         id: json['id'],
//         name: json['name'],
//         displayName: json['displayName'],
//         createdDate: json['createdDate'],
//         dirty: json['dirty']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['uid'] = this.id;
//     data['name'] = this.name;
//     data['displayName'] = this.displayName;
//     data['createdDate'] = this.createdDate;
//     data['lastModifiedDate'] = this.lastModifiedDate;
//     data['dirty'] = this.dirty;
//
//     return data;
//   }
// }
