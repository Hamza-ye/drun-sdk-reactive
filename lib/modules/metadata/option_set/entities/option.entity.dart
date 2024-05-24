import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadata/option_set/entities/option_set.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'option', apiResourceName: 'options')
class Option extends IdentifiableEntity {
  @Column(nullable: true)
  int? sortOrder;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? description;

  @ManyToOne(table: OptionSet, joinColumnName: 'optionSet')
  dynamic optionSet;

  Option(
      {required String id,
      required String name,
      required String code,
      String? displayName,
      this.sortOrder,
      required this.optionSet,
        this.description,
      required bool dirty})
      : super(
            id: id,
            name: name,
            code: code,
            displayName: displayName,
            dirty: dirty);

  factory Option.fromJson(Map<String, dynamic> jsonData) {
    return Option(
        id: jsonData['id'],
        name: jsonData['name'],
        code: jsonData['code'],
        optionSet: jsonData['optionSet'],
        displayName: jsonData['displayName'],
        description: jsonData['description'],
        sortOrder: jsonData['sortOrder'],
        dirty: jsonData['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['optionSet'] = this.optionSet;
    data['sortOrder'] = this.sortOrder;
    data['displayName'] = this.displayName;
    data['description'] = this.description;
    data['dirty'] = this.dirty;
    return data;
  }
}
