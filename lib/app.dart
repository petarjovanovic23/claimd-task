import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'k.dart';

class Exchangeagram extends StatelessWidget {
  const Exchangeagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white, fontSize: 48, fontFamily: K.fontFamilyRoboto, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontFamily: K.fontFamilyRoboto,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
