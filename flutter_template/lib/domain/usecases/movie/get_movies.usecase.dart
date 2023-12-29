import 'package:flutter_template/core/error/error_response.dart';
import 'package:flutter_template/domain/entities/movie_page.dart';
import 'package:flutter_template/domain/usecases/remote.usecase.dart';

import '../../entities/result.dart';
import '../../repository/movies.repository.dart';

class GetMoviesUseCase extends RemoteUseCase<MoviesRepository> {
  final int page;

  GetMoviesUseCase({required this.page});

  @override
  Future<Result<MoviePage>> call(MoviesRepository repository) async {
    final result = await repository.getMovies(page: page);

    return (result.statusCode == 200)
        ? Result.success(result.data!)
        : Result.failure(ErrorResponse(
            statusCode: result.statusCode,
            message: result.message,
          ));
  }
}
