// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_donation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDonationImpl _$$EventDonationImplFromJson(Map<String, dynamic> json) =>
    _$EventDonationImpl(
      id: json['id'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      amount: (json['amount'] as num).toDouble(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      event: Event.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventDonationImplToJson(_$EventDonationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'amount': instance.amount,
      'user': instance.user,
      'event': instance.event,
    };
