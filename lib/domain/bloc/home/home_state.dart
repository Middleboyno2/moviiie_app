
import 'package:equatable/equatable.dart';
import 'package:moviiie/domain/entities/movie_data.dart';

sealed class HomeState with EquatableMixin{
  @override
  List<Object?> get props => [];
}

class InitialHomeState extends HomeState{}

sealed class TrendingMoviesHomeState extends HomeState{}
// yeu cau dang lay list trending movies
class FetchingTrendingMoviesHomeState extends TrendingMoviesHomeState{}
// lay list trending movies that bai
class FetchFailTrendingMoviesHomeState extends TrendingMoviesHomeState{}
// tra ve list trending movies lay thanh cong
class FetchedTrendingMoviesHomeState extends TrendingMoviesHomeState{
  FetchedTrendingMoviesHomeState(this.movies);
  final List<MovieData> movies;

  @override
  List<Object?> get props => [movies];
}

