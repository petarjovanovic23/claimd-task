import 'package:flutter/material.dart';

import '../widgets/search_users.dart';
import '../widgets/testimonial.dart';
import '../my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: const [
              // HeroElement(),
              SizedBox(height: 64),
              SearchUsers(),
              SizedBox(height: 64),
              Testimonial(),
            ],
          );
        }),
      ),
    );
  }
}
