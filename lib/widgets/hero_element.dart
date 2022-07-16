import 'package:flutter/material.dart';
import 'hero_text.dart';
import '../constants.dart';

class HeroElement extends StatelessWidget {
  final BoxConstraints constraints;
  const HeroElement(this.constraints, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(K.heroImage, width: double.infinity, fit: BoxFit.fitWidth),
        HeroText(constraints),
      ],
    );
  }
}
