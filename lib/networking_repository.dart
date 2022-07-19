import 'package:dio/dio.dart';

class NetworkingRepository {
  late final Dio _dio;

  NetworkingRepository() {
    final options = BaseOptions(baseUrl: 'https://localhost:8080/');
    _dio = Dio(options);
  }
}
