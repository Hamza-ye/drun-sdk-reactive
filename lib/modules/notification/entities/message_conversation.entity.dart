import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

import 'message.entity.dart';

@AnnotationReflectable
@Entity(
    tableName: 'messageconversation', apiResourceName: 'messageConversations')
class MessageConversation extends IdentifiableEntity {
  @Column(type: ColumnType.TEXT)
  String status;

  @Column(type: ColumnType.TEXT)
  String messageType;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? lastMessage;

  @Column(type: ColumnType.BOOLEAN)
  bool read;

  @OneToMany(table: Message)
  List<Message>? messages;

  MessageConversation(
      {required String id,
      String? createdDate,
      String? lastModifiedDate,
      required String name,
      required this.status,
      required this.messageType,
      required this.read,
      String? displayName,
      this.messages,
      this.lastMessage,
      required bool dirty})
      : super(
            uid: id,
            name: name,
            displayName: displayName,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty);

  factory MessageConversation.fromJson(Map<String, dynamic> json) {
    return MessageConversation(
        id: json['id'],
        name: json['name'],
        displayName: json['displayName'],
        dirty: json['dirty'],
        status: json['status'],
        messageType: json['messageType'],
        read: json['read'],
        lastMessage: json['lastMessage'],
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        messages: (json['messages'] ?? [])
            .map<Message>((message) => Message.fromJson({
                  ...message,
                  'dirty': false,
                  'messageConversation': json['id']
                }))
            .toList());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    data['status'] = this.status;
    data['messageType'] = this.messageType;
    data['read'] = this.read;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['lastMessage'] = this.lastMessage;
    data['dirty'] = this.dirty;

    return data;
  }
}
