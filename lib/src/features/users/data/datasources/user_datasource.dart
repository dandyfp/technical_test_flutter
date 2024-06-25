import 'package:dio/dio.dart';
import 'package:technical_test_flutter/src/features/users/data/models/response/get_user_response.dart';
import 'package:technical_test_flutter/src/network/network/api_error.dart';
import 'package:technical_test_flutter/src/network/network/network_exceptions.dart';

class UserDatasource {
  final Dio dio;
  UserDatasource(this.dio);

  Future<GetUserResponse> getUsers(int page) async {
    try {
      var response = await dio.get("https://reqres.in/api/users?page=$page");
      return GetUserResponse.fromJson(response.data);
    } catch (e) {
      throw ApiError.failure(
        error: NetworkExceptions.getDioException(e),
        errorRes: NetworkExceptions.getErrorResponse(e),
      );
    }
  }
}
