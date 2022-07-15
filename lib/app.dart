import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'screens/home_screen.dart';

class Exchangeagram extends StatelessWidget {
  const Exchangeagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomeScreen(),
    );
  }
}
