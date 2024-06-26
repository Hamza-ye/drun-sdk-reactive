import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/utilities/dhis_uid_generator.util.dart';

// @AnnotationReflectable
class BaseEntity {
  @PrimaryColumn()
  late String? id;

  @Column(nullable: true)
  late String? uid;

  @Column()
  bool dirty;

  @Column(nullable: true)
  String? lastModifiedDate;

  @Column(nullable: true)
  String? createdDate;

  BaseEntity(
      {this.id,
      this.uid,
      required this.dirty,
      this.createdDate,
      this.lastModifiedDate}) {
    this.id = this.id ?? DhisUidGenerator.generate();

    /// Added for DataRun
    this.uid = this.id;

    this.createdDate =
        this.createdDate ?? DateTime.now().toIso8601String().split('.')[0];
    this.lastModifiedDate = this.lastModifiedDate ?? this.createdDate;
  }

  static fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
