// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Datamodel datamodelFromJson(String str) => Datamodel.fromJson(json.decode(str));


class Datamodel {
    int page;
    List<Result> results;
    int totalPages;
    int totalResults;

    Datamodel({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    factory Datamodel.fromJson(Map<String, dynamic> json) => Datamodel(
        page: json["page"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );


}

class Result {
    
    String backdropPath;
    // String originalName;
    List<int> genreIds;
    int id;
    String originalLanguage;
    String originalTitle;
    String overview;
    double popularity;
    String posterPath;
    DateTime releaseDate;
    String title;
    bool video;
    double voteAverage;
    int voteCount;

    Result({
        required this.backdropPath,
        // required this.originalName,
        required this.genreIds,
        required this.id,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.releaseDate,
        required this.title,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
  
        backdropPath: 'https://image.tmdb.org/t/p/w500${json['backdrop_path']}',
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
            // originalName : json['original_name'],
        id: json["id"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"]?.toDouble(),
        posterPath: 'https://image.tmdb.org/t/p/w500${json['poster_path']}',
        releaseDate: DateTime.parse(json["release_date"]),
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
    );

      
 
}

// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);


  

class Person {
  final int id;
  final String name;
  final String profilePath;
  final String original_title;
  final String overview;

  Person({
    required this.id,
    required this.name,
    required this.profilePath,
    required this.original_title,
    required this.overview,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      name: json['name'],
      profilePath: json['profile_path'],
      original_title: json['original_title'],
      overview: json['overview'],
    );
  }
}