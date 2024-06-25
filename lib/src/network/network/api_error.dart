import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_flutter/src/core/services/core_response.dart';

import 'network_exceptions.dart';

part 'api_error.freezed.dart';

@freezed
abstract class ApiError with _$ApiError {
  const ApiError._();

  const factory ApiError.failure({
    required NetworkExceptions error,
    CoreResponse? errorRes,
  }) = Failure;

  String getErrorMessage() {
    return errorRes != null ? errorRes?.message ?? "" : error.stringError();
  }
}
