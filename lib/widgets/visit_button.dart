import 'package:flutter/material.dart';
import '../constants.dart';

class VisitButton extends StatelessWidget {
  const VisitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(const EdgeInsets.all(6.0)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)))),
        onPressed: () {},
        child: const Text(
          K.viewButton,
          style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: K.fontFamilyRoboto),
        ),
      ),
    );
  }
}
