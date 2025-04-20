import 'package:dio/dio.dart';
import '../constants/app_configs.dart';

Dio createDioClient() {
  final options = BaseOptions(
    baseUrl: AppConfigs.baseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      "Accept": "application/json",
    },
  );

  final dio = Dio(options);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    requestBody: true,
  ));

  return dio;
}
