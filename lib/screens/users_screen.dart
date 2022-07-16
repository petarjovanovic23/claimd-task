import 'package:flutter/material.dart';
import '../widgets/my_app_bar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
          );
        },
      ),
    );
  }
}
