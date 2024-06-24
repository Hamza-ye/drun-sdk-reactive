import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';
import 'package:d2_remote/shared/utilities/object.util.dart';

import 'data_value_set.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'datavalue', apiResourceName: 'dataValues')
class DataValue extends IdentifiableEntity {
  @Column(type: ColumnType.TEXT)
  String dataElement;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? attributeOptionCombo;

  @Column(type: ColumnType.TEXT)
  String categoryOptionCombo;

  @Column(type: ColumnType.TEXT)
  String value;

  @Column(nullable: true)
  String? comment;

  @Column(type: ColumnType.BOOLEAN, nullable: true)
  bool? synced;

  @ManyToOne(joinColumnName: 'dataValueSet', table: DataValueSet)
  dynamic dataValueSet;

  // @Column("simple-json") categoryCombo: any;
  // @Column("simple-json") dataSetElements: any;
  // @Column("simple-json") organisationUnits: any;

  DataValue(
      {String? id,
      String? createdDate,
      String? lastModifiedDate,
      String? name,
      required this.dataElement,
      required this.attributeOptionCombo,
      required this.categoryOptionCombo,
      required this.dataValueSet,
      required this.value,
      required this.synced,
      this.comment,
      required dirty})
      : super(
            uid: id,
            name: name,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty) {
    this.uid = this.uid ??
        '${this.dataElement}_${this.categoryOptionCombo}_${this.dataValueSet}';
    this.name = this.name ?? this.uid;
  }

  factory DataValue.fromJson(Map<String, dynamic> json) {
    final id = json['id'] ??
        '${json['dataElement']}_${json['categoryOptionCombo']}_${json['dataValueSet']}';
    return DataValue(
        id: id,
        name: json['name'] ?? id,
        dirty: json['dirty'],
        dataElement: json['dataElement'],
        attributeOptionCombo: json['attributeOptionCombo'],
        categoryOptionCombo: json['categoryOptionCombo'],
        dataValueSet: json['dataValueSet'],
        value: json['value'],
        comment: json['comment'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        synced: json['synced']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['dirty'] = this.dirty;
    data['dataElement'] = this.dataElement;
    data['attributeOptionCombo'] = this.attributeOptionCombo;
    data['categoryOptionCombo'] = this.categoryOptionCombo;
    data['dataValueSet'] = this.dataValueSet;
    data['value'] = this.value;
    data['comment'] = this.comment;
    data['createdDate'] = this.createdDate;
    data['synced'] = this.synced;

    return data;
  }

  static toUpload(DataValue dataValue) {
    return ObjectUtil.removeNull({
      "dataElement": dataValue.dataElement,
      "categoryOptionCombo": dataValue.categoryOptionCombo,
      "value": dataValue.value,
      "comment": dataValue.comment
    });
  }
}
