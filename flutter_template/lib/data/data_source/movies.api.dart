import 'package:dio/dio.dart';
import 'package:flutter_template/data/response_wrapper.dart';
import 'package:flutter_template/domain/entities/movie_page.dart';
import 'package:retrofit/retrofit.dart';

part 'movies.api.g.dart';

@RestApi()
abstract class MoviesApi {
  factory MoviesApi(Dio dio, {String baseUrl}) = _MoviesApi;

  @GET('/movies')
  Future<ResponseWrapper<MoviePage>> fetchMovies(@Query('page') int page);
}
