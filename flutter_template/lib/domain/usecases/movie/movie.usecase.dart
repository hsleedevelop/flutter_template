import 'package:flutter_template/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';
import '../../repository/movies.repository.dart';

@singleton
class MovieUseCase {
  final MoviesRepository _repository;

  MovieUseCase(this._repository);

  Future<T> execute<T>({required UseCase useCase}) async {
    return await useCase(_repository);
  }
}