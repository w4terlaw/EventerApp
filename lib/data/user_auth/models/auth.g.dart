// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      access_token: json['access_token'] as String,
      token_type: json['token_type'] as String,
      user_id: json['user_id'] as int,
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'user_id': instance.user_id,
    };
