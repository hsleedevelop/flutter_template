import 'package:injectable/injectable.dart';

import '../../domain/entities/movie_page.dart';
import '../../domain/repository/movies.repository.dart';
import '../data_source/movies.api.dart';
import '../response_wrapper.dart';

@Singleton(as: MoviesRepository)
class MoviesRepositoryImpl implements MoviesRepository {

  final MoviesApi _moviesApi;

  MoviesRepositoryImpl(this._moviesApi);

  @override
  Future<ResponseWrapper<MoviePage>> getMovies({required int page}) async {
    return await _moviesApi.fetchMovies(page);
  }
}