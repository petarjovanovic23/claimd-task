import 'package:claimd_task/models/users.dart';
import 'package:flutter/material.dart';
import 'user_profile.dart';

class UsersGrid extends StatelessWidget {
  const UsersGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          itemCount: Users.users.length,
          itemBuilder: (context, index) {
            return UserProfile(Users.users[index]);
          },
        ),
      ),
    );
  }
}
