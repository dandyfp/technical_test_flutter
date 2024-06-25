import 'package:dartz/dartz.dart';
import 'package:technical_test_flutter/src/network/network/api_error.dart';
import 'package:technical_test_flutter/src/utils/usecase.dart';

typedef FutureEither<T> = Future<Either<ApiError, T>>;
typedef FutureVoid = FutureEither<void>;
typedef UseCaseEither<T, R> = UseCase<Either<ApiError, T>, R>;
