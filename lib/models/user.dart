import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int userId;
  final String fullName;
  final String userName;
  final String email;
  final String? phoneNumber;
  final String userRole;
  final String? organiazationName;
  final String? organiazationEmail;
  final String? organiazationType;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final String? profilePic;

  User({
    required this.userId,
    required this.fullName,
    required this.userName,
    required this.email,
    this.phoneNumber,
    required this.userRole,
    this.organiazationName,
    this.organiazationEmail,
    this.organiazationType,
    required this.createdAt,
    this.profilePic,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}