import 'package:flutter/material.dart';

class Collect extends StatefulWidget {
  const Collect({super.key});

  @override
  State<Collect> createState() => _CollectState();
}

class _CollectState extends State<Collect> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Collect",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}