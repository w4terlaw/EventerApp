// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      organizer: Organizer.fromJson(json['organizer'] as Map<String, dynamic>),
      expectedAmount: (json['expectedAmount'] as num).toDouble(),
      countOfMembers: json['countOfMembers'] as int,
      recommendedDonation: (json['recommendedDonation'] as num).toDouble(),
      eventDates: (json['eventDates'] as List<dynamic>)
          .map((e) => EventDates.fromJson(e as Map<String, dynamic>))
          .toList(),
      venues: (json['venues'] as List<dynamic>)
          .map((e) => Venues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'organizer': instance.organizer,
      'expectedAmount': instance.expectedAmount,
      'countOfMembers': instance.countOfMembers,
      'recommendedDonation': instance.recommendedDonation,
      'eventDates': instance.eventDates,
      'venues': instance.venues,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      state: State.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$EventDatesImpl _$$EventDatesImplFromJson(Map<String, dynamic> json) =>
    _$EventDatesImpl(
      id: json['id'] as int,
      startDateTime: DateTime.parse(json['startDateTime'] as String),
      endDateTime: DateTime.parse(json['endDateTime'] as String),
    );

Map<String, dynamic> _$$EventDatesImplToJson(_$EventDatesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDateTime': instance.startDateTime.toIso8601String(),
      'endDateTime': instance.endDateTime.toIso8601String(),
    };

_$OrganizerImpl _$$OrganizerImplFromJson(Map<String, dynamic> json) =>
    _$OrganizerImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$OrganizerImplToJson(_$OrganizerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };

_$StateImpl _$$StateImplFromJson(Map<String, dynamic> json) => _$StateImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StateImplToJson(_$StateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
    };

_$VenuesImpl _$$VenuesImplFromJson(Map<String, dynamic> json) => _$VenuesImpl(
      name: json['name'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      address: json['address'] as String,
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VenuesImplToJson(_$VenuesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photos': instance.photos,
      'address': instance.address,
      'city': instance.city,
    };
