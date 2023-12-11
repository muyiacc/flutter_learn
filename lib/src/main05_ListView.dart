import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter APP"),),
        // body: const Column(
        //   children: [
        //     MyApp(),
        //   ],
        // ),
        body: const MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), // 下划线
      ],
    );
  }
}