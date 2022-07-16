import 'package:claimd_task/constants.dart';
import 'package:claimd_task/widgets/user_profile.dart';
import 'package:flutter/material.dart';
import '../widgets/my_app_bar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Check to see if your friends are using ${K.appName}!", style: textTheme.subtitle2),
                Container(
                  width: 420,
                  height: 80,
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    style: textTheme.subtitle2,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 28,
                      ),
                    ),
                    textInputAction: TextInputAction.search,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
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
