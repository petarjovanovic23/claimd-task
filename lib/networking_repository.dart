import 'package:claimd_task/models/user.dart';
import 'package:dio/dio.dart';

class NetworkingRepository {
  late final Dio _dio;

  NetworkingRepository() {
    final options = BaseOptions(baseUrl: 'http://localhost:8080/');
    _dio = Dio(options);
  }

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get('/users');

      print(response.data);

      return [];
    } catch (error) {
      print(error);
      return [];
    }
  }
}
