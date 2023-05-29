// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_organizer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteOrganizer _$$_FavoriteOrganizerFromJson(Map<String, dynamic> json) =>
    _$_FavoriteOrganizer(
      id: json['id'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      organizer: Organizer.fromJson(json['organizer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavoriteOrganizerToJson(
        _$_FavoriteOrganizer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'organizer': instance.organizer,
    };
