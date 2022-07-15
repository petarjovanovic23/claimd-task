import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class Exchangeagram extends StatelessWidget {
  const Exchangeagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
