import 'package:flutter/material.dart';

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

  void search(value, users) {
    if (searchController.text == "") {
      // deactivate search
    } else {
      // search for a value
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
      ),
    );
  }
}
