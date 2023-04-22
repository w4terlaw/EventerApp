// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Events _$$_EventsFromJson(Map<String, dynamic> json) => _$_Events(
      id: json['id'] as int,
      name: json['name'] as String,
      eventDates: (json['eventDates'] as List<dynamic>)
          .map((e) => EventDates.fromJson(e as Map<String, dynamic>))
          .toList(),
      venues: (json['venues'] as List<dynamic>)
          .map((e) => Venues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventsToJson(_$_Events instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'eventDates': instance.eventDates,
      'venues': instance.venues,
    };

_$_Venues _$$_VenuesFromJson(Map<String, dynamic> json) => _$_Venues(
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      address: json['address'] as String,
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VenuesToJson(_$_Venues instance) => <String, dynamic>{
      'photos': instance.photos,
      'address': instance.address,
      'city': instance.city,
    };

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['id'] as int,
      name: json['name'] as String,
      state: State.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
    };

_$_State _$$_StateFromJson(Map<String, dynamic> json) => _$_State(
      id: json['id'] as int,
      name: json['name'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateToJson(_$_State instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
    };

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_EventDates _$$_EventDatesFromJson(Map<String, dynamic> json) =>
    _$_EventDates(
      startDateTime: DateTime.parse(json['startDateTime'] as String),
      endDateTime: DateTime.parse(json['endDateTime'] as String),
    );

Map<String, dynamic> _$$_EventDatesToJson(_$_EventDates instance) =>
    <String, dynamic>{
      'startDateTime': instance.startDateTime.toIso8601String(),
      'endDateTime': instance.endDateTime.toIso8601String(),
    };
