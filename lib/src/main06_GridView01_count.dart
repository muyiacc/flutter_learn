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

// 使用 GridView.count
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    // 生成一系列的widget
    for (var i = 0; i < 15; i++) {
      tempList.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Text(
          "这是第$i个元素",
          style: const TextStyle(fontSize: 20),
        ),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2, // 横轴子元素的个数
        // 设置 padding
        padding: const EdgeInsets.all(10),
        // 设置横轴的间距
        crossAxisSpacing: 10,
        // 设置竖轴的间距
        mainAxisSpacing: 10,
        // 设置宽高比
        childAspectRatio: 0.7,
        children: _initGridViewData());
  }
}
