import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/datarun/utilities/date_helper.dart';
import 'package:d2_remote/shared/utilities/dhis_uid_generator.util.dart';

// @AnnotationReflectable
class BaseEntity {
  @PrimaryColumn()
  late final String? id;

  @Column(nullable: true)
  late final String? uid;

  @Column()
  final bool dirty;

  @Column(nullable: true)
  final String? lastModifiedDate;

  @Column(nullable: true)
  final String? createdDate;

  BaseEntity(
      {String? id,
      // String? uid,
      required this.dirty,
      String? createdDate,
      String? lastModifiedDate})
      : this.id = id ?? DhisUidGenerator.generate(),
        this.uid = id,
        this.createdDate = createdDate ?? DateHelper.nowUtc(),
        this.lastModifiedDate = lastModifiedDate ?? createdDate;

  static fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
