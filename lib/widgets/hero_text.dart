import 'package:flutter/material.dart';
import '../k.dart';

class HeroText extends StatelessWidget {
  const HeroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('${K.heroText} ', style: TextStyle(color: Colors.white, fontSize: 42, fontFamily: K.fontFamilyRoboto)),
            Text('${K.online}?',
                style: TextStyle(color: Colors.white, fontSize: 42, fontFamily: K.fontFamilyRoboto, decoration: TextDecoration.underline)),
          ],
        ),
        const Text(K.secondHeroText, style: TextStyle(color: Colors.white, fontSize: 42, fontFamily: K.fontFamilyRoboto)),
      ],
    );
  }
}
