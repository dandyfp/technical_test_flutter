import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class CoreResponse<T> {
  int? page;
  int? total;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'per_page')
  int? perPage;
  String? message;

  T? data;

  CoreResponse({
    this.totalPages,
    this.page,
    this.data,
    this.message,
    this.perPage,
  });

  factory CoreResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$CoreResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$CoreResponseToJson(this, toJsonT);
}
