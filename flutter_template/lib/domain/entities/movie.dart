import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    @Default(false) bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') List<int>? genreIDs,
    int? id,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

// // MARK: - Result
// public struct Movie: Codable, Hashable, Identifiable {
// let adult: Bool
// let backdropPath: String
// let genreIDs: [Int]
// public let id: Int
// let originalLanguage: OriginalLanguage
// public let originalTitle, overview: String
// let popularity: Double
// public let posterPath, releaseDate, title: String
// let video: Bool
// let voteAverage: Double
// let voteCount: Int

// enum CodingKeys: String, CodingKey {
// case adult
// case backdropPath = "backdrop_path"
// case genreIDs = "genre_ids"
// case id
// case originalLanguage = "original_language"
// case originalTitle = "original_title"
// case overview, popularity
// case posterPath = "poster_path"
// case releaseDate = "release_date"
// case title, video
// case voteAverage = "vote_average"
// case voteCount = "vote_count"
// }
// }

// public enum OriginalLanguage: String, Codable, Hashable {
// case en = "en"
// case fr = "fr"
// }

