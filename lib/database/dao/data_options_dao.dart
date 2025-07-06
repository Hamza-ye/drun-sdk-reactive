import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'data_options_dao.g.dart';

@DriftAccessor(tables: [DataOptions])
class DataOptionsDao extends DatabaseAccessor<AppDatabase>
    with _$DataOptionsDaoMixin {
  DataOptionsDao(AppDatabase db) : super(db);

  Selectable<DataOption> selectOptions(
      {String? optionSetUid,
      String textToSearch = '',
      List<String> optionsToShow = const [],
      List<String> optionsToHide = const []}) {
    final byOptionSet = dataOptionSets.id.equals(optionSetUid ?? '');

    var query = selectOnly(dataOptions)..where(byOptionSet);

    if (textToSearch.isNotEmpty) {
      final pattern = '%$textToSearch%';
      query = query
        ..where(
            dataOptions.name.like(pattern) | dataOptions.code.like(pattern));
    }

    if (optionsToShow.isNotEmpty) {
      query = query..where(dataOptions.code.isIn(optionsToHide));
    }

    if (optionsToShow.isNotEmpty) {
      query = query..where(dataOptions.code.isNotIn(optionsToHide));
    }

    query
      ..orderBy([
        OrderingTerm(expression: dataOptions.order, mode: OrderingMode.asc),
      ]);

    // Map rows to model
    return query.map((row) {
      return row.readTable(dataOptions);
    });
  }
}
