import 'package:dartz/dartz.dart';
import 'package:technical_test_flutter/src/features/users/domain/entities/user.dart';
import 'package:technical_test_flutter/src/features/users/domain/repositories/user_repository.dart';
import 'package:technical_test_flutter/src/features/users/domain/usecase/get_user/get_user_params.dart';
import 'package:technical_test_flutter/src/network/network/api_error.dart';
import 'package:technical_test_flutter/src/utils/type_defs.dart';

class GetUser implements UseCaseEither<List<User>, GetUserParams> {
  final UserRepository _userRepository;

  GetUser({required UserRepository userRepository}) : _userRepository = userRepository;
  @override
  Future<Either<ApiError, List<User>>> call(GetUserParams params) async {
    var result = await _userRepository.getUsers(params.page);
    return result;
  }
}
