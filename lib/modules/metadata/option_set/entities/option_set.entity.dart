import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadata/option_set/entities/option.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'optionset', apiResourceName: 'optionSets')
class OptionSet extends IdentifiableEntity {
  // @OneToMany(table: AttributeOption)
  // List<AttributeOption>? options;

  @OneToMany(table: Option)
  List<Option>? options;

  OptionSet(
      {required String id,
      required String name,
      this.options,
      required bool dirty})
      : super(id: id, name: name, dirty: dirty);

  factory OptionSet.fromJson(Map<String, dynamic> jsonData) {
    return OptionSet(
        id: jsonData['id'],
        name: jsonData['name'],
        options: List<dynamic>.from(jsonData['options'] ?? [])
            .map((option) => Option.fromJson(
                {...option, 'optionSet': jsonData['id'], 'dirty': false}))
            .toList(),
        dirty: jsonData['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['options'] = this.options;
    data['dirty'] = this.dirty;
    return data;
  }
}
