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

      List<User> users = [];
      response.data.toList().forEach((e) => users.add(User.fromJson(e)));

      return users;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<User?> fetchUser(String username) async {
    try {
      final response = await _dio.get('/users/$username');

      final user = User.fromJson(response.data[0]);

      return user;
    } catch (error) {
      print(error);
      return null;
    }
  }
}
