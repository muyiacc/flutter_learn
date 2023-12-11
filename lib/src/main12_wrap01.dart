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

// 使用 button 显示剧集，可左右滑动选择
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // 生成剧集
  List<Widget> _initListButtonData(int count) {
    List<Widget> list = [];
    for (var i = 1; i <= count; i++) {
      list.add(SizedBox(
        width: 100,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text("第$i集")),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        // width: 50,
        child: Wrap(
          runSpacing: 20,
          spacing: 20,
          // scrollDirection: Axis.horizontal,
          children: _initListButtonData(15),
        ));
  }
}
