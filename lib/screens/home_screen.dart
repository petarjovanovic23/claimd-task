import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../networking_repository.dart';
import '../widgets/app_footer.dart';
import '../widgets/hero_element.dart';
import '../widgets/search_users.dart';
import '../widgets/testimonial.dart';

import '../widgets/my_app_bar.dart';

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
              HeroElement(constraints),
              const SearchUsers(),
              const SizedBox(height: 64),
              const Testimonial(),
              const AppFooter(),
            ],
          );
        }),
      ),
    );
  }
}
