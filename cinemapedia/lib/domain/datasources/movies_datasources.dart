import 'package:cinemapedia/domain/entities/movie_entities.dart';

abstract class MoviesDataSources {

  Future<List<Movie>> getNowPlaying({ int page = 1 });
  
}