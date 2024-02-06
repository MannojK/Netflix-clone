// services/movie_service.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'movie.dart';

Future<Datamodel> fetchTopRated() async {
  final response1 = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/top_rated?api_key=e4469ecec0c8eb46469d4ff1ed1a761e'));

  if (response1.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response1.body);

    return Datamodel.fromJson(data);
  } else {
    throw Exception('Failed to fetch data');
  }
}

Future<Datamodel> fetchPopular() async {
  final response2 = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=e4469ecec0c8eb46469d4ff1ed1a761e'));

  if (response2.statusCode == 200) {
    final Map<String, dynamic> data2 = jsonDecode(response2.body);

    // print(response2);

    return Datamodel.fromJson(data2);
  } else {
    throw Exception('Failed to fetch data');
  }
}

Future<Datamodel> fetchNowPlaying() async {
  final response2 = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=e4469ecec0c8eb46469d4ff1ed1a761e'));

  if (response2.statusCode == 200) {
    final Map<String, dynamic> data2 = jsonDecode(response2.body);


    return Datamodel.fromJson(data2);
  } else {
    throw Exception('Failed to fetch data');
  }
}



Future<Datamodel> fetchUpcoming() async {
  final response2 = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=e4469ecec0c8eb46469d4ff1ed1a761e'));

  if (response2.statusCode == 200) {
    final Map<String, dynamic> data2 = jsonDecode(response2.body);


    return Datamodel.fromJson(data2);
  } else {
    throw Exception('Failed to fetch data');
  }
}
Future<Datamodel> fetchDiscover() async {
  final response2 = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/discover/movie?api_key=e4469ecec0c8eb46469d4ff1ed1a761e'));

  if (response2.statusCode == 200) {
    final Map<String, dynamic> data2 = jsonDecode(response2.body);


    return Datamodel.fromJson(data2);
  } else {
    throw Exception('Failed to fetch data');
  }
}

Future<List<Person>> fetchPersonPopular() async {
  final response2 = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/505?api_key=e4469ecec0c8eb46469d4ff1ed1a761e'));

  
    try {
   
      if (response2.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response2.body);
        final List<dynamic> results = data['results'];

        return results.map((json) => Person.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw error;
    }
}
