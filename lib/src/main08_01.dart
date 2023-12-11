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

// 实现两行，第一行黑色背景，第二行左右间隔，右边占1/4 ，上下结构
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: 300,
          // color: Colors.yellow,
          child: Image.asset(
            "images/02.png",
            fit: BoxFit.cover,

          ),
        ),
        Container(
          height: 500,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://pic.3gbizhi.com/uploadmark/20231207/6c40a12e975817646157f5b0a0da2ba1.jpg",
                fit: BoxFit.cover,
              ),
              Image.network(
                "https://pic.3gbizhi.com/uploadmark/20231207/6c40a12e975817646157f5b0a0da2ba1.jpg",
                fit: BoxFit.cover,
              ),
              Image.network(
                "https://pic.3gbizhi.com/uploadmark/20231207/6c40a12e975817646157f5b0a0da2ba1.jpg",
                fit: BoxFit.cover,
              ),
            ],
          ),
          
        )
      ],
    );
  }
}
