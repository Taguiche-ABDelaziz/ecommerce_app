import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("HomePage", style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
