import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String src;
  const Avatar(this.src, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: Colors.black, radius: 42, backgroundImage: NetworkImage(src));
  }
}
