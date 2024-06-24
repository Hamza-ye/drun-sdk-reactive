import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/base.entity.dart';

@AnnotationReflectable
class IdentifiableEntity extends BaseEntity {
  @Column(nullable: true)
  String? name;

  @Column(nullable: true)
  final String? displayName;

  @Column(nullable: true)
  final String? shortName;

  @Column(nullable: true)
  final String? code;

  IdentifiableEntity({
    String? id,
    String? uid,
    required bool dirty,
    this.name,
    this.displayName,
    this.shortName,
    String? lastModifiedDate,
    String? createdDate,
    this.code,
    /// id changed to point to uid for DataRun
  }) : super(id: uid, uid: uid, dirty: dirty, createdDate: createdDate, lastModifiedDate: lastModifiedDate);
}
