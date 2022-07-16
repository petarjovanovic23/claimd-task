import 'package:claimd_task/widgets/user_profile.dart';
import 'package:flutter/material.dart';
import '../widgets/my_app_bar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Flexible(
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
            ),
          ],
        ),
      ),
    );
  }
}
