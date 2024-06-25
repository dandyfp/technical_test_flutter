import 'package:dartz/dartz.dart';
import 'package:technical_test_flutter/src/features/users/data/datasources/user_datasource.dart';
import 'package:technical_test_flutter/src/features/users/domain/entities/user.dart';
import 'package:technical_test_flutter/src/features/users/domain/repositories/user_repository.dart';
import 'package:technical_test_flutter/src/network/network/api_error.dart';
import 'package:technical_test_flutter/src/utils/type_defs.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDatasource _userDatasource;

  UserRepositoryImpl({required UserDatasource userDatasource}) : _userDatasource = userDatasource;

  @override
  FutureEither<List<User>> getUsers(int page) async {
    try {
      var response = await _userDatasource.getUsers(page);

      List<User> data = response.data!.map((e) => e.toEntity()).toList();
      return right(data);
    } catch (e) {
      return left(e as ApiError);
    }
  }
}
