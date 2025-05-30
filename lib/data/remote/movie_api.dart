import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:moviiie/data/remote/models/movie_model.dart';
import 'package:moviiie/data/remote/models/paginated_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'movie_api.g.dart';
@RestApi()
@singleton
abstract class MovieApi{
  @factoryMethod
  factory MovieApi(Dio dio) = _MovieApi;

  @GET('/trending/movie/week')
  Future<PaginatedModel<MovieModel>> getTrendingMoviesOfThisWeek();
}