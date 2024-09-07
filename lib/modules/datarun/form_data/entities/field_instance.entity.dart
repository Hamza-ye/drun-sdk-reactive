import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun/form_data/entities/form_element_instance.entity.dart';

class FieldInstance extends FormElementInstance<Object> {
  FieldInstance(
      {dynamic formInstance,
      required String name,
      required ValueType type,
      String? section,
      String? path,
      Object? value})
      : super(
            name: name,
            formInstance: formInstance,
            section: section,
            path: path,
            type: type,
            value: value);

  factory FieldInstance.fromJson(Map<String, dynamic> json) {
    final String sectionPath =
        json['section'] != null ? '${json['section']}.' : '';
    final String path = '$sectionPath${json['name']}';

    return FieldInstance(
        formInstance: json['formInstance'],
        name: json['name'],
        section: json['section'],
        path: path,
        type: ValueType.getValueType(json['type']),
        value: json['value']);
  }

  Map<String, dynamic> toJson() => {
        'formInstance': formInstance,
        'name': name,
        'section': section,
        'path': path,
        'type': type.name,
        'value': value,
      };

  @override
  bool contains(String name) => this.name == name;
}
