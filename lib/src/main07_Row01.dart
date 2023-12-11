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
    // Row() 横向排列
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: IconContainer(
              Icons.home,
              color: Colors.red,
            )),
        Container(
          width: 500,
          child: IconContainer(
            Icons.search,
            color: Colors.greenAccent,
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer(this.icon,
      {super.key,
      required this.color}); // required代表是必须添加的参数，因为 成员变量中 color 不是可 null 的类型，

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 120,
        width: 120,
        color: color,
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ));
  }
}
