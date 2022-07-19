import 'package:flutter/material.dart';

class VerticalBlock extends StatelessWidget {
  final int count;
  final String label;
  const VerticalBlock({required this.count, required this.label, Key? key}) : super(key: key);

  String roundCount() {
    if (count >= 1000 && count <= 999999) {
      var newCount = (count / 1000).floor().toInt();
      return "${newCount}K";
    } else if (count >= 1000000) {
      var newCount = (count / 1000000).floor().toInt();
      return "${newCount}M";
    } else {
      return "${count.round()}";
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle2!;
    return SizedBox(
      height: 60,
      child: Column(
        children: [
          Text(roundCount(), style: textStyle),
          Text(label, style: textStyle),
        ],
      ),
    );
  }
}
