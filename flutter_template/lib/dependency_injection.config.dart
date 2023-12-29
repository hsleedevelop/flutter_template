// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_template/data/data_source/data_source_module.dart'
    as _i7;
import 'package:flutter_template/data/data_source/movies.api.dart' as _i3;
import 'package:flutter_template/data/repository_impl/movies.repository_impl.dart'
    as _i5;
import 'package:flutter_template/domain/repository/movies.repository.dart'
    as _i4;
import 'package:flutter_template/domain/usecases/movie/movie.usecase.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataSourceModule = _$DataSourceModule();
    gh.singleton<_i3.MoviesApi>(dataSourceModule.moviesApi);
    gh.singleton<_i4.MoviesRepository>(
        _i5.MoviesRepositoryImpl(gh<_i3.MoviesApi>()));
    gh.singleton<_i6.MovieUseCase>(
        _i6.MovieUseCase(gh<_i4.MoviesRepository>()));
    return this;
  }
}

class _$DataSourceModule extends _i7.DataSourceModule {}
