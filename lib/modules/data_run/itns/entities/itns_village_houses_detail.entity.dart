import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(
    tableName: 'itnsVillageHousesDetail',
    apiResourceName: 'itns-village-houses-details')
class ItnsVillageHousesDetail extends IdentifiableEntity {
  @Column(nullable: false)
  bool deleted;

  @Column(nullable: false)
  int couponid;

  @Column(nullable: false)
  String hname;

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

  @Column(nullable: false)
  String comment;

  @Column(type: ColumnType.TEXT, nullable: false)
  String itnsVillage;

  ItnsVillageHousesDetail(
      {required String id,
      String? uid,
      required this.deleted,
      required this.couponid,
      required this.hname,
      required this.male,
      required this.female,
      required this.pregnant,
      required this.population,
      required this.maleChild,
      required this.femaleChild,
      required this.displaced,
      required this.itns,
      required this.comment,
      required this.itnsVillage,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,
      required dirty})
      : super(
            id: id,
            name: name,
            code: code,
            created: created,
            uid: uid,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory ItnsVillageHousesDetail.fromJson(Map<String, dynamic> json) {
    final itnsVillage = json['itnsVillage'] is String
        ? json['itnsVillage']
        : json['itnsVillage']['id'].toString();
    return ItnsVillageHousesDetail(
        id: json['id'].toString(),
        uid: json['uid'],
        itnsVillage: itnsVillage,
        deleted: json['deleted'],
        // houseUuid: json['houseUuid'],
        couponid: json['couponid'],
        hname: json['hname'],
        male: json['male'],
        female: json['female'],
        pregnant: json['pregnant'],
        population: json['population'],
        maleChild: json['maleChild'],
        femaleChild: json['femaleChild'],
        displaced: json['displaced'],
        itns: json['itns'],
        comment: json['comment'],
        code: json['code'] ?? json['couponid'],
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
      'couponid': couponid,
      'hname': hname,
      'male': male,
      'female': female,
      'pregnant': pregnant,
      'population': population,
      'maleChild': maleChild,
      'femaleChild': femaleChild,
      'displaced': displaced,
      'itns': itns,
      'comment': comment,
      'name': name,
      'code': code ?? couponid,
      'createdDate': created,
      'lastModifiedDate': lastUpdated,
      'dirty': dirty,
    };
  }
}
