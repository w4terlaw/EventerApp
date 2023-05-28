// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_donation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDonation _$$_EventDonationFromJson(Map<String, dynamic> json) =>
    _$_EventDonation(
      id: json['id'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      amount: (json['amount'] as num).toDouble(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      event: Event.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventDonationToJson(_$_EventDonation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'amount': instance.amount,
      'user': instance.user,
      'event': instance.event,
    };
