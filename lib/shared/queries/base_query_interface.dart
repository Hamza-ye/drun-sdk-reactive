// // query_interface.dart
// import 'package:d2_remote/shared/entities/base.entity.dart';
// import 'package:d2_remote/shared/models/request_progress.model.dart';
// import 'package:d2_remote/shared/utilities/query_filter.util.dart';
// import 'package:d2_remote/shared/utilities/query_filter_condition.util.dart';
// import 'package:d2_remote/shared/utilities/query_model.util.dart';
// import 'package:d2_remote/shared/utilities/save_option.util.dart';
// import 'package:d2_remote/shared/utilities/sort_order.util.dart';
// import 'package:dio/dio.dart';
//
// abstract class BaseQueryInterface<T extends BaseEntity> {
//   List<QueryFilter>? filters = [];
//   String? id;
//   // Database? get database;
//   Future<List<T>> get({Dio? dioTestClient, bool? online});
//
//   Future<T?> getOne({Dio? dioTestClient, bool? online});
//
//   Future<int> save({SaveOptions? saveOptions});
//
//   Future delete();
//
//   Future createTable();
//
//   Future count();
//
//   byId(String id);
//
//   byIds(List<String> ids);
//
//   whereIn(
//       {required String attribute,
//       required List<String> values,
//       required bool merge});
//
//   where({required String attribute, required dynamic value});
//
//   orderBy({required String attribute, required SortOrder order});
//
//   QueryModel get query {
//     List<QueryFilter>? filters = this.filters;
//     if (this.id != null) {
//       filters = [
//         QueryFilter(
//             attribute: 'id', condition: QueryCondition.Equal, value: this.id)
//       ];
//     }
//
//     return QueryModel(
//         resourceName: this.apiResourceName as String,
//         tableName: this.tableName as String,
//         singularResourceName: this.singularResourceName,
//         fields: this.fields as List<String>,
//         filters: filters,
//         relations: this.relations,
//         columns: this.repository.columns);
//   }
//
//   Future create();
//
//   Future<List<T>> _fetchOnline({Dio? dioTestClient});
//
//   Future<List<T>?> download(Function(RequestProgress, bool) callback,
//       {Dio? dioTestClient});
//
//   Future<String> dhisUrl();
//
//   Future<String> dataRunUrl();
// }
