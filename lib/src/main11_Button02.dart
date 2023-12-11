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

// 设置圆角,圆形按钮
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // 不同的版本按钮的默认样式好像不一样，现在这个版本 3.16.3 ElevatedButton 是默认圆角的
          // 所以设置 圆形 按钮：
          // 设置圆形按钮后，测试后发现子元素过长，按钮不会自动伸缩
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(const CircleBorder(
                    side: BorderSide(color: Colors.yellow)))),
            child: const Text("圆形"),
          ),

          OutlinedButton.icon(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            icon: const Icon(Icons.inbox),
            label: const Text("圆形按钮"),
          ),
        ],
      ),
    ]);
  }
}
