import 'package:flutter_template/domain/repository/repository.dart';

import '../../data/response_wrapper.dart';
import '../entities/movie_page.dart';

abstract class MoviesRepository extends Repository {
  Future<ResponseWrapper<MoviePage>> getMovies({required int page});
}
