// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  userId: (json['userId'] as num).toInt(),
  fullName: json['fullName'] as String,
  userName: json['userName'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  userRole: json['userRole'] as String,
  organiazationName: json['organiazationName'] as String?,
  organiazationEmail: json['organiazationEmail'] as String?,
  organiazationType: json['organiazationType'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  profilePic: json['profilePic'] as String?,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'userId': instance.userId,
  'fullName': instance.fullName,
  'userName': instance.userName,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'userRole': instance.userRole,
  'organiazationName': instance.organiazationName,
  'organiazationEmail': instance.organiazationEmail,
  'organiazationType': instance.organiazationType,
  'created_at': instance.createdAt.toIso8601String(),
  'profilePic': instance.profilePic,
};
