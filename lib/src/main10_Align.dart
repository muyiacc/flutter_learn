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
    return Container(
      color: Colors.red,
      width: 300,
      height: 300,

      // Align: 控制子元素的显示位置
      child:  const Align( 
        // alignment: Alignment.center,

        // 除了使用 Alignment 的属性还可以使用构造函数
        alignment: Alignment(0, 0),

        child: Text(
          "hello flutter align",
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellow
          ),
        ),
      ),
    );
  }
}
