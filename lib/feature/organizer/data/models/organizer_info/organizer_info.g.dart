// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizerInfoImpl _$$OrganizerInfoImplFromJson(Map<String, dynamic> json) =>
    _$OrganizerInfoImpl(
      countOfSubscribers: json['countOfSubscribers'] as int,
      countOfEvents: json['countOfEvents'] as int,
      isSubscribed: json['isSubscribed'] as bool,
    );

Map<String, dynamic> _$$OrganizerInfoImplToJson(_$OrganizerInfoImpl instance) =>
    <String, dynamic>{
      'countOfSubscribers': instance.countOfSubscribers,
      'countOfEvents': instance.countOfEvents,
      'isSubscribed': instance.isSubscribed,
    };
