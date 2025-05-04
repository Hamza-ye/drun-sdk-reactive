import 'package:d_sdk/core/form/element_template/element_template.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/shared/shared.dart';
import 'package:drift/drift.dart';

class CustomSerializer extends ValueSerializer {
  @override
  T fromJson<T>(dynamic json) {
    if (T == List<Translation>) {
      return (json as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e))
          .toList() as T;
    } else if (T == List<FormOption>) {
      return (json as List<dynamic>?)
          ?.map((e) => FormOption.fromJson(e))
          .toList() as T;
    } else if (T == List<DOptionSet>) {
      return (json as List<dynamic>?)
          ?.map((e) => DOptionSet.fromJson(e))
          .toList() as T;
    } else if (T == List<AllowedAction>) {
      return (json as List<dynamic>?)
          ?.map((e) => AllowedAction.getValueType(e as String?))
          .toList() as T;
    } else if (T == List<TeamFormPermission>) {
      return (json as List<dynamic>?)
          ?.map((e) => TeamFormPermission.fromJson(e))
          .toList() as T;
    } else if (T == List<Template>) {
      return (json as List<dynamic>?)
          ?.map((e) => Template.fromJsonFactory(e))
          .toList() as T;
    } else if (T == List<User>) {
      return (json as List<dynamic>?)
          ?.map((e) => User.fromJson(e, serializer: CustomSerializer()))
          .toList() as T;
    }

    return driftRuntimeOptions.defaultSerializer.fromJson<T>(json);
  }

  // @override
  // dynamic toJson<T>(T value) {
  //   return driftRuntimeOptions.defaultSerializer.toJson(value);
  // }

  @override
  dynamic toJson<T>(T value) {
    if (value is List<Translation>) {
      return value.map((e) => e.toJson()).toList();
    } else if (value is List<FormOption>) {
      return value.map((e) => e.toJson()).toList();
    } else if (value is List<DOptionSet>) {
      return value.map((e) => e.toJson()).toList();
    } else if (value is List<AllowedAction>) {
      return value.map((e) => e.name).toList();
    } else if (value is List<TeamFormPermission>) {
      return value.map((e) => e.toJson()).toList();
    } else if (value is List<Template>) {
      return value.map((e) => Template.toJsonFactory(e)).toList();
    } else if (value is List<String>) {
      return value.map((e) => e).toList();
    } else if (value is List<FormOption>) {
      return value.map((e) => e.toJson()).toList();
    } else if (value is List<User>) {
      return value.map((e) => e.toJson()).toList();
    }
    // Handle other types
    return driftRuntimeOptions.defaultSerializer.toJson(value);
  }
}
