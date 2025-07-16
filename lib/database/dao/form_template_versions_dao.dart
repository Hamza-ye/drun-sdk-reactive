import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/dao/base_extension.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'form_template_versions_dao.g.dart';

@DriftAccessor(tables: [FormTemplateVersions])
class FormTemplateVersionsDao extends DatabaseAccessor<AppDatabase>
    with _$FormTemplateVersionsDaoMixin, BaseExtension<FormTemplateVersion> {
  FormTemplateVersionsDao(AppDatabase db) : super(db);

  @override
  String get resourceName => 'formTemplateVersions';

  @override
  FormTemplateVersion fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    return FormTemplateVersion.fromJson({
      ...data,
      'template': data['templateUid'],
    }, serializer: serializer);
  }

  @override
  $FormTemplateVersionsTable
      get table => formTemplateVersions;

  Selectable<(FormTemplate, FormTemplateVersion)> selectFormTemplatesWithRefs(
      {String? assignmentId}) {
    // Alias the version table for the aggregation subquery
    final latestVersionsNumbers = alias(formTemplateVersions, 'lv_nums');

    // Build a select-only query to get max(versionNumber) per template
    final versionMaxQuery = selectOnly(latestVersionsNumbers)
      ..addColumns([
        latestVersionsNumbers.template, // template FK
        latestVersionsNumbers.versionNumber.max(), // max versionNumber
      ])
      ..groupBy([
        latestVersionsNumbers.template
      ]); // group by template FK :contentReference[oaicite:4]{index=4}

    // Wrap it as a subquery named 'lv'
    final latestVersionsSub = Subquery(versionMaxQuery, 'lv');

    // Alias the version table again to join for details
    final ftv = alias(formTemplateVersions, 'ftv');
    final af = alias(attachedDatabase.assignmentForms, 'a');

    // Perform the join: FormTemplate ↔ detailed version ↔ max-version subquery
    final query = select(formTemplates).join([
      innerJoin(
        ftv,
        ftv.template.equalsExp(formTemplates.id) // match on template ID
            &
            ftv.versionNumber.equalsExp(latestVersionsSub
                .ref(latestVersionsNumbers.versionNumber.max())),
      ),
      innerJoin(formTemplates, af.form.equalsExp(formTemplates.id),
          useColumns: false),
    ]);

    if (assignmentId != null) {
      query.where(af.assignment.equals(assignmentId));
    }

    // Execute and map results
    // final JoinedSelectStatement<HasResultSet, dynamic> rows = query;
    return query.map((row) {
      final tmpl = row.readTable(formTemplates);
      final ver = row.readTable(ftv);
      return (tmpl, ver);
    });
  }

// Future<List<(FormTemplate, FormTemplateVersion)>>
//     selectFormTemplatesWithRefs() async {
//   final latestVersions = Subquery(
//     select(formTemplateVersions)
//       ..orderBy([(row) => OrderingTerm.desc(row.versionNumber)])
//       ..limit(1),
//     's',
//   );
//
//   final query = select(formTemplates).join(
//     [
//       innerJoin(
//           latestVersions,
//           // Again using .ref() here to access the category in the outer select
//           // statement.
//           latestVersions
//               .ref(formTemplateVersions.template)
//               .equalsExp(formTemplates.id))
//     ],
//   )..groupBy([formTemplates.id]);
//
//   final rows = await query.get();
//
//   return [
//     for (final row in rows)
//       (row.readTable(formTemplates), row.readTable(latestVersions)!),
//   ];
// }
}
