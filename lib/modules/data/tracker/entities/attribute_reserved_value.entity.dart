import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(
    tableName: 'attributeReserveValue',
    apiResourceName: 'attributeReserveValues')
class AttributeReservedValue extends IdentifiableEntity {
  @Column()
  String attribute;
  @Column()
  String value;
  @Column()
  String expiryDate;

  AttributeReservedValue(
      {required String id,
      required String name,
      required this.attribute,
      required this.value,
      required this.expiryDate,
      String? createdDate,
      required bool dirty})
      : super(uid: id, name: name, dirty: dirty, createdDate: createdDate);

  factory AttributeReservedValue.fromJson(Map<String, dynamic> json) {
    final attribute = json['attribute'] ?? json['ownerUid'];
    final value = json['value'];
    final id = json['id'] ?? '${attribute}_$value';
    return AttributeReservedValue(
        id: id,
        name: id,
        attribute: attribute,
        value: value,
        expiryDate: json['expiryDate'],
        createdDate: json['createdDate'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['attribute'] = this.attribute;
    data['value'] = this.value;
    data['expiryDate'] = this.expiryDate;
    data['createdDate'] = this.createdDate;
    data['dirty'] = this.dirty;
    return data;
  }
}
