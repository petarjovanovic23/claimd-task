import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/search_field.dart';
import '../widgets/users_grid.dart';
import '../widgets/my_app_bar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  Row searchBar(TextTheme textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(K.searchLabel, style: textTheme.subtitle2),
        const SearchField(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchBar(textTheme),
            const SizedBox(height: 24.0),
            const UsersGrid(),
          ],
        ),
      ),
    );
  }
}
