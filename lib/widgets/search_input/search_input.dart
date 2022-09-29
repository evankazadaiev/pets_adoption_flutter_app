import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
          style: const TextStyle(fontSize: 12, color: Colors.white70),
          decoration: InputDecoration(
              fillColor: Theme.of(context).colorScheme.secondaryContainer,
              filled: true,
              prefixIcon: const Icon(Icons.location_pin, color: Colors.white70),
              hintStyle: TextStyle(color: Colors.white70),
              // helperStyle: TextStyle(fontSize: 12),
              labelStyle: TextStyle(fontSize: 14, color: Colors.white70),
              enabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(12)),
              label: const Text("Search location..."))),
    );
  }
}
