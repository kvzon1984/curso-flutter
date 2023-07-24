import 'package:cinemapedia/domain/entities/movie_entities.dart';

abstract class MoviesRepository {

  Future<List<Movie>> getNowPlaying({ int page = 1 });
  
}