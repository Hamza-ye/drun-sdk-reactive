import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/form/shared/value_type.dart';
import 'package:d2_remote/modules/datarun/form_data/entities/form_instance.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

abstract class FormElementInstance<T> extends IdentifiableEntity {
  @ManyToOne(table: FormInstance, joinColumnName: 'formValue')
  dynamic formInstance;

  @Column(nullable: true)
  final String? section;

  @Column(nullable: true)
  FormElementInstance<Object>? parent;

  @Column(nullable: true)
  final String? path;

  @Column(nullable: true, type: ColumnType.TEXT)
  final ValueType type;

  @Column(nullable: true, type: ColumnType.TEXT)
  final T? value;

  FormElementInstance({
    String? uid,
    required String name,
    this.formInstance,
    this.parent,
    this.section,
    this.path,
    required this.type,
    this.value,
  }) : super(id: uid, uid: uid, name: name, dirty: false);

  // bool contains(String name);
}
