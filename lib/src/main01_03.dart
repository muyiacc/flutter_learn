// importM
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("hello flutter~~"),),
        body: const MyApp(),
      ),
    )
  );
}

// statelessW
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "This is String",
        style: TextStyle(
          fontSize: 50.0,
        ),
      ),
    );
  }
}