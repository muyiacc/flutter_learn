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
      home: const MyHomePage(),
    );
  }
}

// 使用 StatefulWidget 有状态组件

// 实现默认的计数器，点击按钮实现数字加 1
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter App"),
        leading: const Icon(Icons.home),
      ),
      body: Center( 
        child: Text("数字：$_numCount", style: Theme.of(context).textTheme.displayLarge,),
      ), 

      // floatingActionButton: FloatingActionButton.extended(onPressed: (){
      //   setState(() {
      //     _numCount++;
      //   });
      // }, label: const Icon(Icons.add))
      floatingActionButton: FloatingActionButton(onPressed: () => _numCount++,
        child: const Icon(Icons.add),
      ),

    );
  }
}
