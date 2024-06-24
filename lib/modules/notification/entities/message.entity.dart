import 'dart:convert';
import 'dart:core';

import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

import 'message_conversation.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'message', apiResourceName: 'messages')
class Message extends IdentifiableEntity {
  @Column(nullable: true)
  String? sender;

  @Column()
  String text;

  @ManyToOne(joinColumnName: 'messageConversation', table: MessageConversation)
  dynamic messageConversation;

  Message(
      {required String id,
      String? createdDate,
      String? lastModifiedDate,
      required String name,
      String? displayName,
      this.sender,
      required this.text,
      required this.messageConversation,
      required dirty})
      : super(
            uid: id,
            name: name,
            displayName: displayName,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate,
            dirty: dirty);

  factory Message.fromJson(Map<String, dynamic> json) {
    const JsonEncoder encoder = JsonEncoder();
    final dynamic sender = encoder.convert(json['sender']);

    return Message(
        id: json['id'],
        name: json['name'],
        displayName: json['displayName'],
        dirty: json['dirty'],
        text: json['text'],
        sender: sender.toString(),
        createdDate: json['createdDate'],
        lastModifiedDate: json['lastModifiedDate'],
        messageConversation: json['messageConversation']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.id;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    data['dirty'] = this.dirty;
    data['text'] = this.text;
    data['sender'] = this.sender;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['messageConversation'] = this.messageConversation;

    return data;
  }
}
