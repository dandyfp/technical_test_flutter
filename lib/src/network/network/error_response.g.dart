// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      message: json['message'] as String?,
    )
      ..page = (json['page'] as num?)?.toInt()
      ..total = (json['total'] as num?)?.toInt()
      ..totalPages = (json['total_pages'] as num?)?.toInt()
      ..perPage = (json['per_page'] as num?)?.toInt()
      ..data = json['data'];
