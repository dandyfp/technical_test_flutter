import 'package:technical_test_flutter/src/features/users/domain/entities/user.dart';
import 'package:technical_test_flutter/src/utils/type_defs.dart';

abstract interface class UserRepository {
  FutureEither<List<User>> getUsers(int page);
}
