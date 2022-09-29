import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profile-screen";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        width: double.infinity,
        child: Placeholder(),
      ),
    );
  }
}
