// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_organizer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteOrganizerImpl _$$FavoriteOrganizerImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteOrganizerImpl(
      id: json['id'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      organizer: Organizer.fromJson(json['organizer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavoriteOrganizerImplToJson(
        _$FavoriteOrganizerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'organizer': instance.organizer,
    };
