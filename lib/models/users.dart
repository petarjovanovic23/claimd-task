import 'package:flutter/material.dart';

import './user.dart';

class Users extends ChangeNotifier {
  static List<User> users = [];
  User? searchedUser;

  bool isSearchActive = false;

  void search(user) {
    isSearchActive = true;
    searchedUser = user;
    notifyListeners();
  }

  void deactivateSearch() {
    isSearchActive = false;
    notifyListeners();
  }

  void fetchUsers() {}

  void fetchUser(String username) {}
}
