// GENERATED CODE - DO NOT MODIFY BY HAND


part of 'movie_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviePageImpl _$$MoviePageImplFromJson(Map<String, dynamic> json) =>
    _$MoviePageImpl(
      page: json['page'] as int? ?? 0,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['total_pages'] as int? ?? 0,
      totalResults: json['total_results'] as int? ?? 0,
    );

Map<String, dynamic> _$$MoviePageImplToJson(_$MoviePageImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
