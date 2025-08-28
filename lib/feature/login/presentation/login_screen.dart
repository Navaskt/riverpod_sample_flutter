import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String data;

  const LoginScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [Text("Sample Go Route Navigation")]),
    );
  }
}
