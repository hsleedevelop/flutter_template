import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/constants.dart';
import '../../core/network/rest_client.dart';
import 'movies.api.dart';

@module
abstract class DataSourceModule {
  final Dio _dio = RestClient().getDio;

  @singleton
  MoviesApi get moviesApi {
    _dio.options.baseUrl = AppConstants.apiBaseUrl;
    return MoviesApi(_dio);
  }
}
