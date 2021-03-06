import 'package:claimd_task/networking_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_theme.dart';
import '../constants.dart';
import '../screens/users_screen.dart';
import '../screens/home_screen.dart';

class Exchangeagram extends StatelessWidget {
  const Exchangeagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NetworkingRepository(),
      child: Builder(builder: (context) {
        context.read<NetworkingRepository>().fetchUsers();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theme,
          home: const HomeScreen(),
          routes: {
            Routes.home: (_) => const HomeScreen(),
            Routes.users: (_) => const UsersScreen(),
          },
        );
      }),
    );
  }
}
