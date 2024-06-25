import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:technical_test_flutter/src/network/network/http_helper.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
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
