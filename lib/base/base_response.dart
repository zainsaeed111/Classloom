import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final String status;
  final String message;
  @JsonKey(name: 'data')
  final T? data;

  BaseResponse({
    required this.status,
    required this.message,
    this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return BaseResponse<T>(
      status: json['status'] as String,
      message: json['message'] as String,
      data: json['data'] == null ? null : fromJsonT(json['data']),
    );
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return {
      'status': status,
      'message': message,
      'data': data == null ? null : toJsonT(data!),
    };
  }


}