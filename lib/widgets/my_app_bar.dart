import 'package:flutter/material.dart';
import '../constants.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline3!;
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      leading: const SizedBox.shrink(),
      title: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(K.appName, style: textStyle),
            Image.asset(K.appLogo, height: 42),
          ],
        ),
      ),
    );
  }
}
