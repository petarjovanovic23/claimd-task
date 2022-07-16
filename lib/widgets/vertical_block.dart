import 'package:flutter/material.dart';

class VerticalBlock extends StatelessWidget {
  final int count;
  final String label;
  const VerticalBlock({required this.count, required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle2!;
    return SizedBox(
      height: 60,
      child: Column(
        children: [
          Text(count.toString(), style: textStyle),
          Text(label, style: textStyle),
        ],
      ),
    );
  }
}
