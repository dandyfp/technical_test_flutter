import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_flutter/src/core/services/core_response.dart';

part 'error_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: false,
)
class ErrorResponse extends CoreResponse {
  ErrorResponse({
    super.message,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
}
