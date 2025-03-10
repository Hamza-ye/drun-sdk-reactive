import 'package:d2_remote/core/annotations/index.dart' as legacy;
import 'package:d2_remote/shared/entities/base.entity.dart';
import 'package:d2_remote/shared/entities/d_run_identifiable.dart';

@legacy.AnnotationReflectable
class IdentifiableEntity
    extends BaseEntity implements IdentifiableModel {
  @legacy.Column(nullable: true)
  final String? name;

  @legacy.Column(nullable: true)
  final String? displayName;

  @legacy.Column(nullable: true)
  final String? shortName;

  @legacy.Column(nullable: true)
  final String? code;

  IdentifiableEntity({
    String? id,
    String? uid,
    required bool dirty,
    this.name,
    String? displayName,
    this.shortName,
    String? lastModifiedDate,
    String? createdDate,
    this.code,
  })  : this.displayName = displayName ?? name,
        super(
            id: uid,
            // uid: uid,
            dirty: dirty,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IdentifiableEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          uid == other.uid &&
          code == other.code &&
          name == other.name &&
          dirty == other.dirty &&
          lastModifiedDate == other.lastModifiedDate);

  @override
  int get hashCode =>
      id.hashCode ^
      uid.hashCode ^
      code.hashCode ^
      name.hashCode ^
      dirty.hashCode ^
      lastModifiedDate.hashCode;

  @override
  String toString() {
    return 'BaseEntity{' +
        ' id: $id,' +
        ' uid: $uid,' +
        ' code: $code,' +
        ' name: $name,' +
        ' dirty: $dirty,' +
        ' lastModifiedDate: $lastModifiedDate,'
     '}';
  }
}
