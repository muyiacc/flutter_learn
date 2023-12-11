import 'package:flutter/material.dart';

void main(){
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
        appBar: AppBar(title: const Text("Flutter APP"),),
        body: const MyHomePage()
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 后面的元素会覆盖前面的元素
    return Stack(
      alignment: Alignment.center,  // 设置元素显示的位置
        children: [
          Container(
            width: 300,
            height: 500,
            color: Colors.blue,
          ),
          const Text(
            "Hello Flutter",
            style: TextStyle( 
              color: Colors.yellow
            ),
          ),
          Container(
            width: 500,
            height: 300,
            color: Colors.green,
          ),
          const Text(
            "Stack中后面的元素会覆盖前面的元素",
            style: TextStyle( 
              color: Colors.white
            ),
          ),
        ],
      );
  }
}