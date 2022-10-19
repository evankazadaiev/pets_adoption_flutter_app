import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: TextField(
          decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.location_pin),
              label: Text("Search location..."))),
    );
  }
}
