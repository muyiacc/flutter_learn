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
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.blue,
        ),
        // 使用 Positioned 在左侧中间显示这段文本
        const Positioned(
          left: 0,
          top: 250,
          child: Text(
            "Hello Flutter",
            style: TextStyle(color: Colors.yellow, fontSize: 20),
          ),
        ),
        // 让其在右侧底部
        Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            )),
        const Positioned(
            left: 250,
            top: 30,
            child: Text(
              "Stack中后面的元素会覆盖前面的元素",
              style: TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
