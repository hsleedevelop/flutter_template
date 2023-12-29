import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.g.dart';

@JsonSerializable()
class ErrorResponse {
  final int statusCode;
  final String? message;

  ErrorResponse({
    this.statusCode = 0,
    this.message = '',
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
}