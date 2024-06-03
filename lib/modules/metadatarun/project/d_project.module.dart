import 'package:d2_remote/modules/metadatarun/project/queries/d_project.query.dart';

class DProjectModule {
  static createTables() async {
    await DProjectQuery().createTable();
  }

  DProjectQuery get project => DProjectQuery();
}
