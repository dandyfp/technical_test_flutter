import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_flutter/src/core/services/core_response.dart';
import 'package:technical_test_flutter/src/features/users/data/models/user_model.dart';

part 'get_user_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: true,
)
class GetUserResponse extends CoreResponse<List<UserModel>> {
  GetUserResponse({
    super.data,
    super.page,
    super.perPage,
    super.totalPages,
  });

  factory GetUserResponse.fromJson(Map<String, dynamic> json) => _$GetUserResponseFromJson(json);
}
