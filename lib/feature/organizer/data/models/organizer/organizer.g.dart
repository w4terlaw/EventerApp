// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Organizer _$$_OrganizerFromJson(Map<String, dynamic> json) => _$_Organizer(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
      background: json['background'] as String,
      description: json['description'] as String,
      cardNumber: json['cardNumber'] as String,
      cardHolderName: json['cardHolderName'] as String,
      facebook: json['facebook'] as String?,
      telegram: json['telegram'] as String?,
      vk: json['vk'] as String?,
      twitter: json['twitter'] as String?,
      instagram: json['instagram'] as String?,
    );

Map<String, dynamic> _$$_OrganizerToJson(_$_Organizer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'background': instance.background,
      'description': instance.description,
      'cardNumber': instance.cardNumber,
      'cardHolderName': instance.cardHolderName,
      'facebook': instance.facebook,
      'telegram': instance.telegram,
      'vk': instance.vk,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
    };
