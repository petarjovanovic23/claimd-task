import 'package:flutter/material.dart';
import 'user_profile.dart';

class UsersGrid extends StatelessWidget {
  const UsersGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          mainAxisExtent: 330,
          crossAxisSpacing: 30,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const UserProfile();
        },
      ),
    );
  }
}
