import 'package:flutter/material.dart';
import 'hero_text.dart';
import '../k.dart';

class HeroElement extends StatelessWidget {
  const HeroElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(K.heroImage, width: double.infinity, fit: BoxFit.fitWidth),
        const HeroText(),
      ],
    );
  }
}
