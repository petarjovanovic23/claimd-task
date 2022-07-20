import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_provider.dart';
import '../provider_listener.dart';
import '../constants.dart';
import '../models/users.dart';
import '../models/user.dart';
import 'user_profile.dart';

class UsersGrid extends StatefulWidget {
  const UsersGrid({Key? key}) : super(key: key);

  @override
  State<UsersGrid> createState() => _UsersGridState();
}

class _UsersGridState extends State<UsersGrid> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final usersProvider = context.watch<Users>();
    return buildUsersGrid(usersProvider);
  }

  Widget buildUsersGrid(Users usersProvider) {
    return ProviderListener<UserProvider>(
      listener: (context, userProvider) {
        userProvider.state.maybeWhen(
          orElse: () {},
          success: (user) {
            setState(() {
              isLoading = false;
            });
            usersProvider.search(user);
          },
          loading: () {
            setState(() {
              isLoading = true;
            });
          },
        );
      },
      child: Flexible(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: isLoading ? buildLoadingWidget() : buildGrid(usersProvider),
        ),
      ),
    );
  }

  GridView buildGrid(Users usersProvider) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        mainAxisExtent: 330,
        crossAxisSpacing: 30,
      ),
      itemCount: usersProvider.isSearchActive ? 1 : Users.users.length,
      itemBuilder: (context, index) {
        return usersProvider.isSearchActive ? UserProfile(usersProvider.searchedUser as User) : UserProfile(Users.users[index]);
      },
    );
  }

  SizedBox buildLoadingWidget() {
    return SizedBox(
      height: 820,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: CircularProgressIndicator(color: Colors.black54)),
          const SizedBox(height: 16.0),
          Text(K.fetchingUserData, style: Theme.of(context).textTheme.subtitle2),
        ],
      ),
    );
  }
}
