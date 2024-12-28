import 'package:d2_remote/modules/datarun_shared/utilities/form_permission.dart';
import 'package:d2_remote/modules/datarun_shared/utilities/parsing_helpers.dart';

class TeamFormPermission {
  final String form;
  final List<FormPermission> permissions = [];

  TeamFormPermission(
      {required this.form, List<FormPermission> permissions = const []}) {
    this.permissions.addAll(permissions);
  }

  bool hasPermission(FormPermission action) {
    return permissions.any((permission) => permission == action);
  }

  factory TeamFormPermission.fromJson(Map<String, dynamic> json) {
    final permissions = json['permissions'] != null
        ? (parseDynamicJson(json['permissions']) as List)
            .map((permission) => FormPermission.getType(permission)!)
            .toList()
        : <FormPermission>[];

    return TeamFormPermission(
      form: json['form'],
      permissions: permissions,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'form': form,
      'permissions': permissions.map((permission) => permission.name).toList(),
    };
  }
}
