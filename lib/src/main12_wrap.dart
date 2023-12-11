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

// Wrap 水平显示（类似于 Row ），自动换行，
// 比如 搜索记录，热搜记录，电视剧剧集 就可以用这个
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initListButtonData() {
    List<Widget> list = [];
    // 模拟数据
    for (var i = 1; i <= 30; i++) {
      // 生成 按钮
      list.add(ElevatedButton(
        onPressed: () {}, 
        style: ButtonStyle( 
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
        child: Text("第$i集")));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start, // 排列方式
      spacing: 10, // 水平显示距离
      runSpacing: 10, // 垂直显示距离
      children: _initListButtonData()
    );
  }
}
