import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadata/option_set/entities/option_group.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'optiongroupoption', apiResourceName: 'optionGroupOption')
class OptionGroupOption extends IdentifiableEntity {
  @Column()
  final String option;

  @ManyToOne(joinColumnName: 'optionGroup', table: OptionGroup)
  dynamic optionGroup;

  OptionGroupOption(
      {required String id,
       String? code,
      required String name,
      required this.option,
      required this.optionGroup,
      required bool dirty})
      : super(id: id,code: code, name: name, dirty: dirty);

  factory OptionGroupOption.fromJson(Map<String, dynamic> json) {
    return OptionGroupOption(
        id: json['id'],
        code: json['code'],
        name: json['id'],
        option: json['option'],
        optionGroup: json['optionGroup'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    data['option'] = this.option;
    data['optionGroup'] = this.optionGroup;
    data['dirty'] = this.dirty;
    return data;
  }
}
