// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageRefImpl _$$MessageRefImplFromJson(Map<String, dynamic> json) =>
    _$MessageRefImpl(
      folderId: (json['folderId'] as num).toInt(),
      id: json['id'] as String,
      topic: json['topic'] as String,
      dateChanged: DateTime.parse(json['dateChanged'] as String),
      sender: json['sender'] as String,
      normalizedId: json['normalizedId'] as String,
    );

Map<String, dynamic> _$$MessageRefImplToJson(_$MessageRefImpl instance) =>
    <String, dynamic>{
      'folderId': instance.folderId,
      'id': instance.id,
      'topic': instance.topic,
      'dateChanged': instance.dateChanged.toIso8601String(),
      'sender': instance.sender,
      'normalizedId': instance.normalizedId,
    };
