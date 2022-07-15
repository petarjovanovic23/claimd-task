import 'package:claimd_task/k.dart';
import 'package:flutter/material.dart';

class SearchUsers extends StatelessWidget {
  const SearchUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle mainStyle = Theme.of(context).textTheme.headline3!;
    TextStyle headline = Theme.of(context).textTheme.headline4!;
    return Column(
      children: [
        Text(K.trailingText, style: headline),
        Text(K.seeUsers, style: mainStyle),
        ElevatedButton(
          // style: ButtonStyle(
          //   shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))),
          //   padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 24.0, horizontal: 48.0)),
          //   backgroundColor: MaterialStateProperty.all(Colors.black26),
          // ),
          onPressed: () {},
          child: const Text(
            K.usersButton,
            style: TextStyle(color: Colors.white70, fontSize: 24, fontFamily: K.fontFamilyIbarra),
          ),
        ),
      ],
    );
  }
}
