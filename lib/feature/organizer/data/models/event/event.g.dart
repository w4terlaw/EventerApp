// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      expectedAmount: (json['expectedAmount'] as num).toDouble(),
      countOfMembers: json['countOfMembers'] as int,
      recommendedDonation: (json['recommendedDonation'] as num).toDouble(),
      organizer: Organizer.fromJson(json['organizer'] as Map<String, dynamic>),
      eventDates: (json['eventDates'] as List<dynamic>)
          .map((e) => EventDates.fromJson(e as Map<String, dynamic>))
          .toList(),
      venues: (json['venues'] as List<dynamic>)
          .map((e) => Venues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'expectedAmount': instance.expectedAmount,
      'countOfMembers': instance.countOfMembers,
      'recommendedDonation': instance.recommendedDonation,
      'organizer': instance.organizer,
      'eventDates': instance.eventDates,
      'venues': instance.venues,
    };
