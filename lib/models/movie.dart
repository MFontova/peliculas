import 'dart:convert';

class Movie {
  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  bool? adult;
  String? backdropPath;
  List<int?>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  DateTime? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  // String toJson() => json.encode(toMap());

  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: json["genre_ids"] == null
            ? []
            : List<int?>.from(json["genre_ids"]!.map((x) => x)),
        id: json["id"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        releaseDate: DateTime.parse(json["release_date"]),
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  // Map<String, dynamic> toMap() => {
  //       "adult": adult,
  //       "backdrop_path": backdropPath,
  //       "genre_ids":
  //           genreIds == null ? [] : List<dynamic>.from(genreIds!.map((x) => x)),
  //       "id": id,
  //       "original_language": originalLanguageValues.reverse![originalLanguage],
  //       "original_title": originalTitle,
  //       "overview": overview,
  //       "popularity": popularity,
  //       "poster_path": posterPath,
  //       "release_date":
  //           "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
  //       "title": title,
  //       "video": video,
  //       "vote_average": voteAverage,
  //       "vote_count": voteCount,
  //     };
}

// enum OriginalLanguage { EN, ID, ES }

// final originalLanguageValues = EnumValues({
//   "en": OriginalLanguage.EN,
//   "es": OriginalLanguage.ES,
//   "id": OriginalLanguage.ID
// });

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String>? reverseMap;

//   EnumValues(this.map);

//   Map<T, String>? get reverse {
//     reverseMap ??= map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
