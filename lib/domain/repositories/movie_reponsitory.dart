import '../entities/movie_data.dart';

abstract class MovieRepository{
  Future<List<MovieData>> getTrendingMoviesOfThisWeek();
}