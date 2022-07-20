import 'package:flutter/material.dart';

import './user.dart';

class Users extends ChangeNotifier {
  static List<User> users = [];
  User? searchedUser;

  bool isSearchActive = false;

  void search(user) {
    isSearchActive = true;
    searchedUser = user;
    bool exists = false;
    users.forEach((element) {
      if (element.username == user.username) {
        exists = true;
      }
    });

    if (!exists) {
      users.add(user);
    }
    notifyListeners();
  }

  void deactivateSearch() {
    isSearchActive = false;
    notifyListeners();
  }
}
