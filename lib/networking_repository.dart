import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'models/user.dart';
import 'models/users.dart';

class NetworkingRepository extends ChangeNotifier {
  late final Dio _dio;

  NetworkingRepository() {
    final options = BaseOptions(baseUrl: 'http://localhost:8080/');
    _dio = Dio(options);
  }

  Future fetchUsers() async {
    try {
      final response = await _dio.get('/users');
      Users.users = [];
      response.data.toList().forEach((e) => Users.users.add(User.fromJson(e)));
    } catch (error) {
      print(error);
    }
  }

  Future<User?> fetchUser(String username) async {
    try {
      final response = await _dio.get('/users/$username');

      final user;
      if (response.data[0] == null) {
        user = User.fromJson(response.data);
      } else {
        user = User.fromJson(response.data[0]);
      }

      return user;
    } catch (error) {
      print(error);
      return null;
    }
  }
}
