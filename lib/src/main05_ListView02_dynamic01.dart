import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter APP"),
      ),
      // body: const Column(
      //   children: [
      //     MyApp(),
      //   ],
      // ),
      body: MyApp(),
    ),
  ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  
  MyApp({super.key});

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 20; i++) {
      list.add("我是第$i条数据");
    }
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index){
      return ListTile(
        title: Text(list[index]),
      );
    });
  }
}
