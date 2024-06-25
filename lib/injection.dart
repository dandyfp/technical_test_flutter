import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:technical_test_flutter/src/features/users/data/datasources/user_datasource.dart';
import 'package:technical_test_flutter/src/features/users/data/repositories/user_repository_impl.dart';
import 'package:technical_test_flutter/src/features/users/domain/repositories/user_repository.dart';
import 'package:technical_test_flutter/src/features/users/domain/usecase/get_user/get_user.dart';
import 'package:technical_test_flutter/src/features/users/presentation/bloc/user/user_bloc.dart';
import 'package:technical_test_flutter/src/network/network/http_helper.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  // Bloc
  locator.registerFactory(() => UserBloc(locator()));

  // Repository
  locator.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(userDatasource: locator()));

  // Usecase
  locator.registerLazySingleton(() => GetUser(userRepository: locator()));

  // Datasource
  locator.registerLazySingleton(() => UserDatasource(locator()));

  // Dio
  Dio dio = Dio();
  final httpHelper = HttpHelper();

  // Register HttpHelper
  locator.registerLazySingleton(() => httpHelper);

  // Register Dio interceptor
  locator.registerLazySingleton(() {
    dio.interceptors.add(httpHelper.getDioInterceptor());
    return dio;
  });
}
