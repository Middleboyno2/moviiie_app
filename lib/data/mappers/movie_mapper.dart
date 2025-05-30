

import 'package:moviiie/app/utils/app_utils.dart';
import 'package:moviiie/data/remote/models/movie_model.dart';
import 'package:moviiie/domain/entities/movie_data.dart';

extension MovieMapper on MovieModel{
  MovieData toData() => MovieData(
    id: id,
    title: title,
    rating: voteAverage,
    posterUrl: AppUtils.addBaseImageUrl(posterPath)
  );
}