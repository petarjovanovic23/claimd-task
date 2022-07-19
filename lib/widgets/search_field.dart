import 'package:claimd_task/models/user.dart';
import 'package:claimd_task/models/users.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../networking_repository.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void search(value, BuildContext context) async {
    final usersProvider = context.read<Users>();
    if (searchController.text == "") {
      usersProvider.deactivateSearch();
    } else {
      final User user = await context.read<NetworkingRepository>().fetchUser(value) as User;
      usersProvider.search(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 420,
      height: 80,
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        style: textTheme.subtitle2,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          suffixIcon: Icon(
            Icons.search,
            size: 28,
          ),
        ),
        textInputAction: TextInputAction.search,
        controller: searchController,
        onSubmitted: (value) => search(value, context),
      ),
    );
  }
}
