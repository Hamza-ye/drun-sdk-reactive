import 'package:d_sdk/core/utilities/query_model.util.dart';

class DataRunUrlGenerator {
  static String generate(/*QueryModel? query*/ String resourceName) {
    // if (query == null) {
    //   return '';
    // }

    // final apiFilter = query.filters != null
    //     ? QueryFilter.getApiFilters(query.columns, query.filters)
    //     : null;

    // final apiFields = DataRunUrlGenerator.getApiFields(query.columns);

    return '${resourceName}?paged=false';
  }

  // static List<String> getApiFields(List<Column> columns) {
  //   return columns.map((column) {
  //     if (column.relation?.relationType == RelationType.OneToMany) {
  //       final relationFields = DataRunUrlGenerator.getApiFields(
  //           (column.relation?.referencedEntityColumns ?? []) as List<Column>);
  //
  //       return '${column.name}[${relationFields.join(',')}]';
  //     }
  //
  //     return column.name ?? '';
  //   }).toList();
  // }
  //
  // static getFilterParams(List<QueryFilter> queryFilters) {
  //   return queryFilters.map((QueryFilter filter) =>
  //       // `filter=${filter.attribute}:${filter.condition}:${sanitizeFilterValue(
  //       //   filter.value,
  //       //   filter.condition
  //       // )}`
  //       '').join('&');
  // }
  //
  // static String sanitizeFilterValue(
  //     dynamic filterValue, String filterCondition) {
  //   switch (filterCondition) {
  //     // case QueryFilterCondition.IN:
  //     case '':
  //       // return `[${filterValue.join(',')}]`;
  //       return '';
  //     default:
  //       return filterValue;
  //   }
  // }
}
