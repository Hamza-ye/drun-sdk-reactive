import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/form/entities/form_definition.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:d2_remote/shared/utilities/sort_order.util.dart';
import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';

@AnnotationReflectable
class FormDefinitionQuery extends BaseQuery<FormDefinition> {
  FormDefinitionQuery({Database? database}) : super(database: database);
  int? version;
  String? form;

  FormDefinitionQuery byVersion(int version) {
    this.version = version;
    return this.where(attribute: 'version', value: version);
  }

  FormDefinitionQuery byForm(String form) {
    this.form = form;
    return this.where(attribute: 'form', value: form);
  }

  @override
  Future<FormDefinition?> getOne({Dio? dioTestClient, bool? online}) async {
    this.sortOrder['version'] = SortOrder.DESC;
    List<FormDefinition> results =
        await this.get(dioTestClient: dioTestClient, online: online);

    return results.length > 0 ? results[0] : null;
  }
}
