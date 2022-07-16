import 'package:flutter/material.dart';
import '../constants.dart';

class HeroText extends StatelessWidget {
  final BoxConstraints constraints;
  const HeroText(this.constraints, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: constraints.maxWidth * 0.8,
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
      child: Column(
        children: [
          Text('${K.heroText} ${K.online}?', style: textTheme.headline1, textAlign: TextAlign.center),
          // Container(
          //
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       // Text('${K.heroText} ${K.online}', style: textTheme.headline1),
          //       // Text('${K.online}?', style: textTheme.headline2),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 12),
          Text(K.secondHeroText, style: textTheme.headline1, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
