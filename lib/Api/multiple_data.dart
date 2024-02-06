// // services/movie_service.dart
// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:netflix_clone/Api/movie.dart';
// Future<Datamodel> fetchMovieData1() async {
//   final response1 = await http.get(Uri.parse('https://api.example.com/endpoint1'));
//   if (response1.statusCode == 200) {
//     final Map<String, dynamic> data = json.decode(response1.body);
//     return Datamodel.fromJson(data);
//   } else {
//     throw Exception('Failed to load movie data from endpoint 1');
//   }
// }

// Future<Datamodel> fetchMovieData2() async {
//   final response2 = await http.get(Uri.parse('https://api.example.com/endpoint2'));
//   if (response2.statusCode == 200) {
//     final Map<String, dynamic> data = json.decode(response2.body);
//     return Datamodel.fromJson(data);
//   } else {
//     throw Exception('Failed to load movie data from endpoint 2');
//   }
// }