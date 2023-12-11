// 导入mateial
import 'package:flutter/material.dart';

// 入口函数
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Hello Title AppBar"),),
      body: const MyApp(),

    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello Text() \n 中文字体",
        style: TextStyle(
          color: Colors.yellow,   // 字体颜色
          fontSize: 40.0,     // 字体大小
          backgroundColor: Colors.teal,   // 背景颜色
          fontStyle: FontStyle.italic,   // 字体样式：斜体
          fontFamily: "宋体",
          ),
      ),
    );
  }
}