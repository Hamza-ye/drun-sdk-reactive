import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
class IdentifiableTreeNode extends IdentifiableEntity {
  @Column(nullable: true)
  String? path;

  @Column(nullable: false, type: ColumnType.TEXT)
  Map<String, String> label;

  @Column(name: 'parent', nullable: true)
  String? parent;

  // NMC
  @Column(nullable: true, type: ColumnType.TEXT)
  List<IdentifiableTreeNode>? ancestors;

  IdentifiableTreeNode(
      {required String id,
      required String uid,
      required String name,
      String? displayName,
      String? code,
      String? lastModifiedDate,
      String? createdDate,
      required this.path,
      required this.label,
      this.parent,
      this.ancestors,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            dirty: dirty,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate);
}
