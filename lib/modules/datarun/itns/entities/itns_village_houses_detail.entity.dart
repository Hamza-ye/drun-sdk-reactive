import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/datarun/itns/entities/itns_village.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(
    tableName: 'itnsVillageHousesDetail',
    apiResourceName: 'itnsVillageHousesDetails')
class ItnsVillageHousesDetail extends IdentifiableEntity {
  @Column(nullable: false)
  bool deleted;

  @Column(nullable: false)
  int couponId;

  @Column(nullable: false)
  int male;

  @Column(nullable: false)
  int female;

  @Column(nullable: false)
  int pregnant;

  @Column(nullable: false)
  int population;

  @Column(nullable: false)
  int maleChild;

  @Column(nullable: false)
  int femaleChild;

  @Column(nullable: false)
  int displaced;

  @Column(nullable: false)
  int itns;

  @Column(nullable: true)
  String? comment;

  @ManyToOne(table: ItnsVillage, joinColumnName: 'itnsVillage')
  dynamic itnsVillage;

  ItnsVillageHousesDetail(
      {String? id,
      String? uid,
      required this.deleted,
      required this.couponId,
      required this.male,
      required this.female,
      required this.pregnant,
      required this.population,
      required this.maleChild,
      required this.femaleChild,
      required this.displaced,
      required this.itns,
      this.comment,
      required this.itnsVillage,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory ItnsVillageHousesDetail.fromJson(Map<String, dynamic> json) {
    return ItnsVillageHousesDetail(
        id: json['id'].toString(),
        uid: json['uid'],
        itnsVillage: json['itnsVillage'] is String
            ? json['itnsVillage']
            : json['itnsVillage']['uid'],
        deleted: json['deleted'],
        // houseUuid: json['houseUuid'],
        couponId: json['couponId'],
        name: json['name'],
        male: json['male'],
        female: json['female'],
        pregnant: json['pregnant'],
        population: json['population'],
        maleChild: json['maleChild'],
        femaleChild: json['femaleChild'],
        displaced: json['displaced'],
        itns: json['itns'],
        comment: json['comment'],
        code: json['code'] ?? json['couponId'].toString(),
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'deleted': deleted,
      // 'houseUuid': houseUuid,
      'couponId': couponId,
      'name': name,
      'male': male,
      'female': female,
      'pregnant': pregnant,
      'population': population,
      'maleChild': maleChild,
      'femaleChild': femaleChild,
      'displaced': displaced,
      'itns': itns,
      'comment': comment,
      'code': code ?? couponId,
      'createdDate': created,
      'lastModifiedDate': lastUpdated,
      'dirty': dirty,
    };
  }
}
