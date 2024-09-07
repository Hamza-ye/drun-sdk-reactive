import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun/form_data/entities/form_element_instance.entity.dart';
import 'package:d2_remote/modules/datarun/form_data/entities/section_instance.entity.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class RepeatableSectionInstance
    extends FormElementInstance<List<SectionInstance>> {
  RepeatableSectionInstance(
      {dynamic formInstance,
      required String name,
      required ValueType type,
      String? section,
      String? path,
      List<SectionInstance>? value})
      : super(
            name: name, formInstance: formInstance, section: section, path: path, type: type, value: value);

  factory RepeatableSectionInstance.fromJson(Map<String, dynamic> json) {
    final value = json['value'] != null
        ? (parseDynamicJson(json['value']) as List<dynamic>)
            .mapIndexedAndLast((index, section, _) => SectionInstance.fromJson(
                {...section, 'section': '${json['name']}.${index}'}))
            .toList()
        : null;

    final String sectionPath =
        json['section'] != null ? '${json['section']}.' : '';
    final String path = '$sectionPath${json['name']}';

    return RepeatableSectionInstance(
        formInstance: json['formInstance'],
        name: json['name'],
        section: json['section'],
        path: path,
        type: ValueType.getValueType(json['type']),
        value: value);
  }

  Map<String, dynamic> toJson() => {
        'formInstance': formInstance,
        'name': name,
        'section': section,
        'path': path,
        'type': type.name,
        'value': value?.map((section) => section.toJson()).toList(),
      };
}
