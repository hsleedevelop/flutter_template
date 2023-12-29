import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_wrapper.freezed.dart';
part 'response_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseWrapper<T> with _$ResponseWrapper<T> {
  const factory ResponseWrapper({
    @Default(0) int statusCode,
    @Default(null) String? message,
    T? data,
  }) = _ResponseWrapper;

  factory ResponseWrapper.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$ResponseWrapperFromJson<T>(json, fromJsonT);
}


// public let statusCode: Int
// public let message: String?
//
// public let data: T?