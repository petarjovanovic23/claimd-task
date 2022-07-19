import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/users.dart';
import '../widgets/app_footer.dart';
import '../constants.dart';
import '../widgets/search_field.dart';
import '../widgets/users_grid.dart';
import '../widgets/my_app_bar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ChangeNotifierProvider(
      create: (_) => Users(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: const MyAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchBar(textTheme),
              const UsersGrid(),
              const AppFooter(),
            ],
          ),
        );
      }),
    );
  }

  Padding searchBar(TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(K.searchLabel, style: textTheme.subtitle2),
          const SearchField(),
        ],
      ),
    );
  }
}
