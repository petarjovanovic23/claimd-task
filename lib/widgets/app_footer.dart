import 'package:flutter/material.dart';
import '../constants.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            K.footerText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
