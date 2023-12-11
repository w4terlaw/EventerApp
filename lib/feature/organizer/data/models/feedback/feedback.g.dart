// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackImpl _$$FeedbackImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackImpl(
      id: json['id'] as int,
      description: json['description'] as String,
      rate: json['rate'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      event: Event.fromJson(json['event'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedbackImplToJson(_$FeedbackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'rate': instance.rate,
      'dateTime': instance.dateTime.toIso8601String(),
      'event': instance.event,
      'user': instance.user,
    };
