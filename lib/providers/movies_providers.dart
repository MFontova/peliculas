import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('MoviesProvider inicializado');

    getOnDisplayMovies();
  }
  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
  }
}
