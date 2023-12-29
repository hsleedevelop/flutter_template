import 'package:flutter_template/dependency_injection.dart';
import 'package:flutter_template/domain/usecases/movie/get_movies.usecase.dart';
import 'package:flutter_template/domain/usecases/movie/movie.usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/error/error_response.dart';
import '../../../domain/entities/movie_page.dart';
import '../../../domain/entities/result.dart';

part 'movies.cubit.freezed.dart';

@freezed
class MoviesResultState with _$MoviesResultState {
  const factory MoviesResultState.initial() = _Initial;

  const factory MoviesResultState.loading() = _Loading;

  const factory MoviesResultState.success(MoviePage data) = _Success;

  const factory MoviesResultState.failure(ErrorResponse response) = _Failure;
}

class MoviesCubit extends Cubit<MoviesResultState> {
  MoviesCubit() : super(const MoviesResultState.initial());

  void fetchMovies(int page) async {
    try {
      final Result<MoviePage> result = await getIt<MovieUseCase>()
          .execute(useCase: GetMoviesUseCase(page: page));
      result.when(success: (data) {
        emit(MoviesResultState.success(data));
      }, failure: (error) {
        emit(MoviesResultState.failure(error));
      });
    } catch (error) {
      print(error.toString());
    }
  }
}
