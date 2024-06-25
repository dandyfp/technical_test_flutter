// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreResponse<T> _$CoreResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    CoreResponse<T>(
      totalPages: (json['total_pages'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
    )..total = (json['total'] as num?)?.toInt();

Map<String, dynamic> _$CoreResponseToJson<T>(
  CoreResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'per_page': instance.perPage,
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
