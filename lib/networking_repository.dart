import 'package:claimd_task/models/user.dart';
import 'package:claimd_task/models/users.dart';
import 'package:dio/dio.dart';

class NetworkingRepository {
  late final Dio _dio;

  NetworkingRepository() {
    final options = BaseOptions(baseUrl: 'http://localhost:8080/');
    _dio = Dio(options);
  }

  Future fetchUsers() async {
    try {
      final response = await _dio.get('/users');

      response.data.toList().forEach((e) => Users.users.add(User.fromJson(e)));
    } catch (error) {
      print(error);
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
