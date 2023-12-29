import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'movie_page.freezed.dart';
part 'movie_page.g.dart';

@freezed
class MoviePage with _$MoviePage {
  const factory MoviePage({
    @Default(0) int page,
    @Default([]) List<Movie> results,
    @JsonKey(name: 'total_pages') @Default(0) int totalPages,
    @JsonKey(name: 'total_results') @Default(0) int totalResults,
  }) = _MoviePage;

  factory MoviePage.fromJson(Map<String, dynamic> json) => _$MoviePageFromJson(json);
}

// // MARK: - Movie
// public struct MoviePage: Codable, Hashable {
// public let page: Int
// public let results: [Movie]
// public let totalPages, totalResults: Int

// enum CodingKeys: String, CodingKey {
// case page, results
// case totalPages = "total_pages"
// case totalResults = "total_results"
// }
// }