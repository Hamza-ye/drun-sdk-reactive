import 'package:d_sdk/core/form/field_template/template.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:drift/drift.dart';

class CustomSerializer extends ValueSerializer {
  @override
  T fromJson<T>(dynamic json) {
    if (T == List<Translation>) {
      return (json as List<dynamic>)
          .map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList() as T;
    } else if (T == List<FormOption>) {
      return (json as List<dynamic>)
          .map((e) => FormOption.fromJson(e as Map<String, dynamic>))
          .toList() as T;
    } else if (T == List<FormOption>) {
      return (json as List<dynamic>)
          .map((e) => FormOption.fromJson(e as Map<String, dynamic>))
          .toList() as T;
    } else if (T == List<DOptionSet>) {
      return (json as List<dynamic>)
          .map((e) => DOptionSet.fromJson(e as Map<String, dynamic>))
          .toList() as T;
    } else if (T == List<AllowedAction>) {
      return (json as List<dynamic>)
          .map((e) => AllowedAction.getValueType(e as String?))
          .toList() as T;
    } else if (T == List<TeamFormPermission>) {
      return (json as List<dynamic>)
          .map((e) => TeamFormPermission.fromJson(e as Map<String, dynamic>))
          .toList() as T;
    } else if (T == List<Template>) {
      return (json as List<dynamic>)
          .map((e) => Template.fromJsonFactory(e as Map<String, dynamic>))
          .toList() as T;
    } else if (T == List<String>) {
      return (json as List<dynamic>)
          .map((e) => e as String)
          .toList() as T;
    }

    return driftRuntimeOptions.defaultSerializer.fromJson<T>(json);
  }

  @override
  dynamic toJson<T>(T value) {
    return driftRuntimeOptions.defaultSerializer.toJson(value);
  }

// @override
// dynamic toJson<T>(T value) {
//   if (value is List<Translation>) {
//     return value.map((e) => e.toJson()).toList();
//   } else if (value is List<FormOption>) {
//     return value.map((e) => e.toJson()).toList();
//   }
//   // Handle other types
//   return value;
// }
}
