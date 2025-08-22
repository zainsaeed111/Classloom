import 'dart:convert';

import 'package:classloom/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'authresponse.g.dart'; // <-- Add this line

@JsonSerializable()
class Authresponse {
  final String token;
  @JsonKey(name: 'userResponse')
  final User userResponse;

  Authresponse({required this.token, required this.userResponse});


factory Authresponse.fromJson(Map<String, dynamic> json) =>
      _$AuthresponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthresponseToJson(this);
 
}