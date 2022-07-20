import 'package:flutter/material.dart';

class VerticalBlock extends StatelessWidget {
  final String count;
  final String label;
  const VerticalBlock({required this.count, required this.label, Key? key}) : super(key: key);

  String roundCount() {
    var tempCount = double.parse(count);
    print(tempCount);
    if (tempCount >= 1000 && tempCount <= 999999) {
      var newCount = (tempCount / 1000).floor().toInt();
      return "${newCount}K";
    } else if (tempCount >= 1000000) {
      var newCount = (tempCount / 1000000).floor().toInt();
      return "${newCount}M";
    } else {
      return "${tempCount.round()}";
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle2!;
    return SizedBox(
      height: 60,
      child: Column(
        children: [
          Text(count, style: textStyle),
          Text(label, style: textStyle),
        ],
      ),
    );
  }
}
