import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/users.dart';
import '../models/user.dart';
import 'user_profile.dart';

class UsersGrid extends StatelessWidget {
  const UsersGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usersProvider = context.watch<Users>();
    return buildUsersGrid(usersProvider);
  }

  Flexible buildUsersGrid(Users usersProvider) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            mainAxisExtent: 330,
            crossAxisSpacing: 30,
          ),
          itemCount: usersProvider.isSearchActive ? 1 : Users.users.length,
          itemBuilder: (context, index) {
            return usersProvider.isSearchActive ? UserProfile(usersProvider.searchedUser as User) : UserProfile(Users.users[index]);
          },
        ),
      ),
    );
  }
}
