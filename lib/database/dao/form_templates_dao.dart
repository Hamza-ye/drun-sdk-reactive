import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/tables/tables.dart';
import 'package:drift/drift.dart';

part 'form_templates_dao.g.dart';

@DriftAccessor(tables: [FormTemplates])
class FormTemplatesDao extends DatabaseAccessor<AppDatabase>
    with _$FormTemplatesDaoMixin {
  FormTemplatesDao(AppDatabase db) : super(db);

  Selectable<(FormTemplate, FormTemplateVersion)> selectFormTemplatesWithRefs(
      {String? assignmentId}) {
    // Alias the version table for the aggregation subquery
    final latestVersionsNumbers =
        alias(attachedDatabase.formTemplateVersions, 'lv_nums');

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
    final latestVersionsSub = Subquery(
        versionMaxQuery, 'lv'); // :contentReference[oaicite:5]{index=5}

    // Alias the version table again to join for details
    final ftv = alias(attachedDatabase.formTemplateVersions,
        'ftv'); // :contentReference[oaicite:6]{index=6}
    final af = alias(db.assignmentForms, 'a');

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
}
