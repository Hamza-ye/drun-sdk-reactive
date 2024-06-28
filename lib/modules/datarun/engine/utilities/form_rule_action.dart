import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_rule.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

class FormRuleAction extends IdentifiableEntity {
  @Column(nullable: true)
  String? content;

  @Column(nullable: true)
  String? data;

  @Column(nullable: true)
  String? displayContent;

  @Column(type: ColumnType.TEXT)
  dynamic programRuleActionType;

  @Column(nullable: true)
  String? field;

  @Column(nullable: true)
  String? trackedEntityAttribute;

  @ManyToOne(table: ProgramRule, joinColumnName: 'programRule')
  dynamic programRule;

  FormRuleAction(
      {String? id,
      String? name,
      this.content,
      this.displayContent,
      required this.programRuleActionType,
      this.programRule,
      this.trackedEntityAttribute,
      this.data,
      required bool dirty})
      : super(uid: id, name: name, dirty: dirty);

  factory FormRuleAction.fromJson(Map<String, dynamic> json) {
    return FormRuleAction(
        id: json['id'],
        name: json['name'] ?? json['id'],
        content: json['content'],
        displayContent: json['displayContent'],
        programRuleActionType: json['programRuleActionType'],
        programRule: json['programRule'],
        trackedEntityAttribute: json['trackedEntityAttribute'] != null
            ? json['trackedEntityAttribute'] is String
                ? json['trackedEntityAttribute']
                : json['trackedEntityAttribute']['id']
            : null,
        dirty: json['dirty'],
        data: json['data']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['content'] = this.content;
    data['displayContent'] = this.displayContent;
    data['programRule'] = this.programRule;
    data['programRuleActionType'] = this.programRuleActionType;
    data['trackedEntityAttribute'] = this.trackedEntityAttribute;
    data['dirty'] = this.dirty;
    data['data'] = this.data;
    return data;
  }
}
