import 'package:claimd_task/k.dart';
import 'package:claimd_task/widgets/hero_text.dart';
import 'package:claimd_task/widgets/search_users.dart';
import 'package:flutter/material.dart';

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
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(K.heroImage, width: double.infinity, fit: BoxFit.fitWidth),
                  const HeroText(),
                ],
              ),
              SearchUsers(),
              Testimonial(),
            ],
          );
        }),
      ),
    );
  }
}
