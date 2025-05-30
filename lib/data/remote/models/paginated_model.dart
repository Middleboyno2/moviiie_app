import 'package:json_annotation/json_annotation.dart';

part 'paginated_model.g.dart';

@JsonSerializable(genericArgumentFactories: true, fieldRename: FieldRename.snake)
class PaginatedModel<T>{
  final int page;
  final List<T> results;
  final int totalPages;
  final int totalResults;

  PaginatedModel({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults
  });

  factory PaginatedModel.fromJson(Map<String, dynamic> json,
    T Function(Object? json) fromJsonT) =>
      _$PaginatedModelFromJson(json, fromJsonT);
}