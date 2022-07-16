import 'package:claimd_task/constants.dart';
import 'package:flutter/material.dart';

class SearchUsers extends StatelessWidget {
  const SearchUsers({Key? key}) : super(key: key);

  Container buildTrailingHeadline(BuildContext context, TextTheme textTheme) {
    return Container(
        color: Theme.of(context).primaryColor, height: 200, child: Center(child: Text(K.trailingText, style: textTheme.bodyText1)));
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        buildTrailingHeadline(context, textTheme),
        const SizedBox(height: 64.0),
        Text(K.seeUsers, style: textTheme.bodyText1),
        const SizedBox(height: 32.0),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pushNamed(Routes.users),
          child: Text(K.usersButton, style: textTheme.bodyText2),
        ),
      ],
    );
  }
}
