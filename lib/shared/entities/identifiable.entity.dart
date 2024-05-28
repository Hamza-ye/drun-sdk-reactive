import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/base.entity.dart';

@AnnotationReflectable
class IdentifiableEntity extends BaseEntity {
  @Column()
  String? name;

  @Column(nullable: true)
  final String? displayName;

  @Column(nullable: true)
  final String? shortName;

  @Column(nullable: true)
  final String? code;

  @Column(nullable: true)
  final String? uid;

  IdentifiableEntity({
    String? id,
    required bool dirty,
    this.name,
    this.displayName,
    this.shortName,
    String? lastUpdated,
    String? created,
    this.code,
    this.uid,
  }) : super(id: id, dirty: dirty, created: created, lastUpdated: lastUpdated);
}
