// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviePage _$MoviePageFromJson(Map<String, dynamic> json) {
  return _MoviePage.fromJson(json);
}

/// @nodoc
mixin _$MoviePage {
  int get page => throw _privateConstructorUsedError;
  List<Movie> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviePageCopyWith<MoviePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviePageCopyWith<$Res> {
  factory $MoviePageCopyWith(MoviePage value, $Res Function(MoviePage) then) =
      _$MoviePageCopyWithImpl<$Res, MoviePage>;
  @useResult
  $Res call(
      {int page,
      List<Movie> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$MoviePageCopyWithImpl<$Res, $Val extends MoviePage>
    implements $MoviePageCopyWith<$Res> {
  _$MoviePageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviePageImplCopyWith<$Res>
    implements $MoviePageCopyWith<$Res> {
  factory _$$MoviePageImplCopyWith(
          _$MoviePageImpl value, $Res Function(_$MoviePageImpl) then) =
      __$$MoviePageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Movie> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$MoviePageImplCopyWithImpl<$Res>
    extends _$MoviePageCopyWithImpl<$Res, _$MoviePageImpl>
    implements _$$MoviePageImplCopyWith<$Res> {
  __$$MoviePageImplCopyWithImpl(
      _$MoviePageImpl _value, $Res Function(_$MoviePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$MoviePageImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviePageImpl implements _MoviePage {
  const _$MoviePageImpl(
      {this.page = 0,
      final List<Movie> results = const [],
      @JsonKey(name: 'total_pages') this.totalPages = 0,
      @JsonKey(name: 'total_results') this.totalResults = 0})
      : _results = results;

  factory _$MoviePageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviePageImplFromJson(json);

  @override
  @JsonKey()
  final int page;
  final List<Movie> _results;
  @override
  @JsonKey()
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'MoviePage(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePageImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviePageImplCopyWith<_$MoviePageImpl> get copyWith =>
      __$$MoviePageImplCopyWithImpl<_$MoviePageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviePageImplToJson(
      this,
    );
  }
}

abstract class _MoviePage implements MoviePage {
  const factory _MoviePage(
          {final int page,
          final List<Movie> results,
          @JsonKey(name: 'total_pages') final int totalPages,
          @JsonKey(name: 'total_results') final int totalResults}) =
      _$MoviePageImpl;

  factory _MoviePage.fromJson(Map<String, dynamic> json) =
      _$MoviePageImpl.fromJson;

  @override
  int get page;
  @override
  List<Movie> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$MoviePageImplCopyWith<_$MoviePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
