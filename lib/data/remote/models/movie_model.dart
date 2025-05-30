
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieModel{
  final int id;
  // ten phim
  final String title;
  // diem danh gia trung binhf
  final double voteAverage;
  // url poster phim
  final String posterPath;

  MovieModel(
    this.id,
    this.title,
    this.voteAverage,
    this.posterPath
  );

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

// đây là kết quả trả về từ api
// {
// "backdrop_path": "/8eifdha9GQeZAkexgtD45546XKx.jpg",
// "id": 822119,
// "title": "Captain America: Brave New World",
// "original_title": "Captain America: Brave New World",
// "overview": "After meeting with newly elected U.S. President Thaddeus Ross, Sam finds himself in the middle of an international incident. He must discover the reason behind a nefarious global plot before the true mastermind has the entire world seeing red.",
// "poster_path": "/pzIddUEMWhWzfvLI3TwxUG2wGoi.jpg",
// "media_type": "movie",
// "adult": false,
// "original_language": "en",
// "genre_ids": [
// 28,
// 53,
// 878
// ],
// "popularity": 139.349,
// "release_date": "2025-02-12",
// "video": false,
// "vote_average": 6.094,
// "vote_count": 1940
// },