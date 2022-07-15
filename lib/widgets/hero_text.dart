import 'package:flutter/material.dart';
import '../k.dart';

class HeroText extends StatelessWidget {
  const HeroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${K.heroText} ', style: textTheme.headline1),
              Text('${K.online}?', style: textTheme.headline2),
            ],
          ),
          const SizedBox(height: 12),
          Text(K.secondHeroText, style: textTheme.headline1),
        ],
      ),
    );
  }
}
