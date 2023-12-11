import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter APP"),
          ),
          body: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // AspectRatio： 控制子元素的宽高比
    return AspectRatio(
      aspectRatio: 1/1, // 设置宽高比
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
