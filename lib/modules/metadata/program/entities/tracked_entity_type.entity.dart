import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'trackedentitytype', apiResourceName: 'trackedEntityTypes')
class TrackedEntityType extends IdentifiableEntity {
  @Column(type: ColumnType.TEXT, nullable: true)
  String? description;

  @Column()
  int minAttributesRequiredToSearch;

  @Column()
  int maxTeiCountToReturn;

  @Column(nullable: true)
  bool allowAuditLog = false;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? featureType;

  TrackedEntityType(
      {required String id,
      required String name,
      String? displayName,
      this.description,
      this.minAttributesRequiredToSearch = 1,
      this.maxTeiCountToReturn = 0,
      this.featureType,
      required bool dirty})
      : super(id: id, name: name, displayName: displayName, dirty: dirty);

  factory TrackedEntityType.fromJson(Map<String, dynamic> jsonData) {
    return TrackedEntityType(
        id: jsonData['id'],
        name: jsonData['name'],
        displayName: jsonData['displayName'],
        description: jsonData['description'],
        minAttributesRequiredToSearch:
            jsonData['minAttributesRequiredToSearch'],
        maxTeiCountToReturn: jsonData['maxTeiCountToReturn'],
        featureType: jsonData['featureType'],
        dirty: jsonData['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    data['description'] = this.description;
    data['minAttributesRequiredToSearch'] = this.minAttributesRequiredToSearch;
    data['maxTeiCountToReturn'] = this.maxTeiCountToReturn;
    data['featureType'] = this.featureType;
    return data;
  }
}
