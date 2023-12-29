import 'package:dio/dio.dart';
import 'package:flutter_template/core/constants.dart';

import '../../utils/logger.dart';

class RestClient {
  final Dio _dio = Dio();

  static final RestClient _instance = RestClient._internal();

  Dio get getDio => _dio;

  factory RestClient() => _instance;

  RestClient._internal() {
    int timeout = 30;
    if (kIsDEV) {
      timeout = 10;
    }

    BaseOptions options = BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: timeout), // 60 seconds
      receiveTimeout: Duration(seconds: timeout), // 60 seconds
      headers: { 'Content-Type': 'application/json' },
    );

    _dio.options = options;

    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) {
      logD('REQUEST[${options.method}] => PATH: ${options.path}');
      return handler.next(options);
    }, onResponse: (response, handler) {
      logD(
          'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
      return handler.next(response);
    }, onError: (DioException e, handler) {
      logD(
          'ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}');
      return handler.next(e);
    }));
  }
}