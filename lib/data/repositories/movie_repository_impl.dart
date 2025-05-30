import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:moviiie/data/mappers/movie_mapper.dart';
import 'package:moviiie/data/remote/models/movie_model.dart';
import 'package:moviiie/data/remote/models/paginated_model.dart';
import 'package:moviiie/data/remote/movie_api.dart';
import 'package:moviiie/domain/entities/movie_data.dart';
import 'package:moviiie/domain/repositories/movie_reponsitory.dart';

@Singleton(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository{
  const MovieRepositoryImpl(this._movieApi);
  final MovieApi _movieApi;
  @override
  Future<List<MovieData>> getTrendingMoviesOfThisWeek() async{
    final PaginatedModel<MovieModel> paginatedModel = await _movieApi.getTrendingMoviesOfThisWeek();
    log('$paginatedModel');
    final List<MovieModel> movies = paginatedModel.results;
    final data = movies.map((movie) => movie.toData()).toList();
    return data;
  }

}