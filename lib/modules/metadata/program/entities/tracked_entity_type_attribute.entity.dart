import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(
    tableName: 'trackedentitytypeattribute',
    apiResourceName: 'trackedEntityTypeAttributes')
class TrackedEntityTypeAttribute extends IdentifiableEntity {
  @Column()
  String attribute;

  @Column()
  bool mandatory;

  @Column(nullable: true)
  bool? displayInList;

  @Column(nullable: true)
  bool? searchable;

  @Column(nullable: true)
  String? trackedEntityType;

  TrackedEntityTypeAttribute(
      {required String id,
      required String name,
      required this.attribute,
      String? displayName,
      required this.mandatory,
      this.displayInList,
      this.searchable,
      this.trackedEntityType,
      required bool dirty})
      : super(id: id, name: name, displayName: displayName, dirty: dirty);

  factory TrackedEntityTypeAttribute.fromJson(Map<String, dynamic> jsonData) {
    final attribute =
        jsonData['attribute'] ?? jsonData['trackedEntityAttribute']?['id'];

    final trackedEntityType = jsonData['trackedEntityType'] != null
        ? jsonData['trackedEntityType'] is String
            ? jsonData['trackedEntityType']
            : jsonData['trackedEntityType']['id'] ??
                jsonData['trackedEntityType']
        : null;

    return TrackedEntityTypeAttribute(
        id: jsonData['id'],
        name: jsonData['trackedEntityAttribute']?['name'] ?? jsonData['name'],
        displayName: jsonData['trackedEntityAttribute']?['displayName'] ??
            jsonData['displayName'],
        attribute: attribute,
        mandatory: jsonData['mandatory'],
        searchable: jsonData['searchable'],
        displayInList: jsonData['displayInList'],
        trackedEntityType: trackedEntityType,
        dirty: jsonData['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    data['attribute'] = this.attribute;
    data['mandatory'] = this.mandatory;
    data['searchable'] = this.searchable;
    data['displayInList'] = this.displayInList;
    data['trackedEntityType'] = this.trackedEntityType;
    return data;
  }
}
