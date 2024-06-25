// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserResponse _$GetUserResponseFromJson(Map<String, dynamic> json) =>
    GetUserResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
    )
      ..total = (json['total'] as num?)?.toInt()
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetUserResponseToJson(GetUserResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'per_page': instance.perPage,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
