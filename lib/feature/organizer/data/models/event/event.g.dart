// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
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
      'eventDates': instance.eventDates,
      'venues': instance.venues,
    };

_$_Venues _$$_VenuesFromJson(Map<String, dynamic> json) => _$_Venues(
      name: json['name'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_VenuesToJson(_$_Venues instance) => <String, dynamic>{
      'name': instance.name,
      'photos': instance.photos,
    };

_$_EventDates _$$_EventDatesFromJson(Map<String, dynamic> json) =>
    _$_EventDates(
      id: json['id'] as int,
      startDateTime: DateTime.parse(json['startDateTime'] as String),
      endDateTime: DateTime.parse(json['endDateTime'] as String),
    );

Map<String, dynamic> _$$_EventDatesToJson(_$_EventDates instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDateTime': instance.startDateTime.toIso8601String(),
      'endDateTime': instance.endDateTime.toIso8601String(),
    };
