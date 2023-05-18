// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Booking _$$_BookingFromJson(Map<String, dynamic> json) => _$_Booking(
      id: json['id'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      eventId: json['eventId'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      eventDates:
          EventDates.fromJson(json['eventDates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookingToJson(_$_Booking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'eventId': instance.eventId,
      'user': instance.user,
      'eventDates': instance.eventDates,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
    };
