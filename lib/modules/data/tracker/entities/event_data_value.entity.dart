// import 'package:d2_remote/core/annotations/index.dart';
// import 'package:d2_remote/shared/entities/identifiable.entity.dart';
//
// import 'event.entity.dart';
//
// @AnnotationReflectable
// @Entity(tableName: 'eventDataValue', apiResourceName: 'dataValues')
// class EventDataValue extends IdentifiableEntity {
//   @Column()
//   String dataElement;
//
//   @Column()
//   String value;
//
//   @Column(nullable: true)
//   String? storedBy;
//
//   @Column(nullable: true)
//   bool? synced;
//
//   @Column(nullable: true)
//   bool? providedElsewhere;
//
//   @ManyToOne(joinColumnName: 'event', table: Event)
//   dynamic event;
//
//   EventDataValue(
//       {String? id,
//       required this.dataElement,
//       required this.value,
//       required this.event,
//       required bool dirty,
//       this.storedBy,
//       String? createdDate,
//       String? lastModifiedDate,
//       String? name,
//       this.synced,
//       this.providedElsewhere})
//       : super(
//             uid: id,
//             name: name,
//             createdDate: createdDate,
//             lastModifiedDate: lastModifiedDate,
//             dirty: dirty) {
//     this.uid = this.uid ?? '${this.event}_${this.dataElement}';
//     this.name = this.name ?? this.uid;
//   }
//
//   factory EventDataValue.fromJson(Map<String, dynamic> json) {
//     return EventDataValue(
//         id: json['id'],
//         name: json['id'],
//         dataElement: json['dataElement'],
//         value: json['value'] ?? '',
//         createdDate: json['createdDate'],
//         lastModifiedDate: json['lastModifiedDate'],
//         event: json['event'],
//         dirty: json['dirty']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['uid'] = this.id;
//     data['name'] = this.name;
//     data['dataElement'] = this.dataElement;
//     data['value'] = this.value;
//     data['event'] = this.event;
//     data['createdDate'] = this.createdDate;
//     data['lastModifiedDate'] = this.lastModifiedDate;
//     data['dirty'] = this.dirty;
//     return data;
//   }
//
//   static toUpload(EventDataValue eventDataValue) {
//     return {
//       "dataElement": eventDataValue.dataElement,
//       "value": eventDataValue.value
//     };
//   }
// }
