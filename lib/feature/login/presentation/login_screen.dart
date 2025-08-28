import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String data;

  const LoginScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Go Route Sample")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [Center(child: Text("Sample Go Route Navigation. ${data}"))],
      ),
    );
  }
}
