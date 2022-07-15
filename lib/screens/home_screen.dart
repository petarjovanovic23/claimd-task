import 'package:claimd_task/k.dart';
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('${K.heroText} ', style: TextStyle(color: Colors.white, fontSize: 42, fontFamily: K.fontFamilyRoboto)),
                          Text('${K.online}?',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 42, fontFamily: K.fontFamilyRoboto, decoration: TextDecoration.underline)),
                        ],
                      ),
                      Text(K.secondHeroText, style: TextStyle(color: Colors.white, fontSize: 42, fontFamily: K.fontFamilyRoboto)),
                    ],
                  ),
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
