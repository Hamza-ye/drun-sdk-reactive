import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadatarun/teams/entities/d_team.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'chvSession', apiResourceName: 'chvSessions')
class ChvSession extends IdentifiableEntity {
  @Column(nullable: true)
  String? sessionDate;

  @Column(nullable: true)
  String? subject;

  @Column(nullable: true)
  int? sessions;

  @Column(nullable: true)
  int? people;

  @Column(nullable: true)
  String? comment;

  @Column(nullable: true)
  String? startEntryTime;

  @ManyToOne(table: DTeam, joinColumnName: 'team')
  dynamic team;

  ChvSession(
      {required String uid,
      int? id,
      String? created,
      String? lastUpdated,
      String? name,
      String? code,
      this.subject,
      this.sessionDate,
      this.sessions,
      this.people,
      this.comment,
      this.startEntryTime,
      this.team,
      required dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory ChvSession.fromJson(Map<String, dynamic> json) {
    return ChvSession(
        id: json['id'],
        uid: json['uid'],
        name: json['name'],
        created: json['createdDate'],
        lastUpdated: json['lastModifiedDate'],
        subject: json['subject'],
        sessionDate: json['sessionDate'],
        sessions: json['sessions'],
        people: json['people'],
        comment: json['comment'],
        startEntryTime: json['startEntryTime'],
        team: json['team'],
        code: json['code'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['id'] = this.id;
    data['createdDate'] = this.created;
    data['lastModifiedDate'] = this.lastUpdated;
    data['name'] = this.name;
    data['code'] = this.code;
    data['subject'] = this.subject;
    data['people'] = this.people;
    data['comment'] = this.comment;
    data['team'] = this.team;
    data['sessionDate'] = this.sessionDate;
    data['startEntryTime'] = this.startEntryTime;
    data['dirty'] = this.dirty;
    return data;
  }
}
