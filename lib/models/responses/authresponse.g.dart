// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authresponse _$AuthresponseFromJson(Map<String, dynamic> json) => Authresponse(
  token: json['token'] as String,
  userResponse: User.fromJson(json['userResponse'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthresponseToJson(Authresponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userResponse': instance.userResponse,
    };
