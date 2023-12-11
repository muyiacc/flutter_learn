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

// 设置按钮的图标
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // 文本按钮
          TextButton.icon(
            // 这两个参数必须设置
            onPressed: () {},
            icon: const Icon(Icons.send),
            // 通过 style 设置样式
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.yellow), // 背景颜色
                foregroundColor: MaterialStateProperty.all(Colors.blue) // 文字颜色
                ),
            label: const Text("发送"),
          ),

          // 带阴影和填充的按钮
          // 为了让 按钮可以设置大小，可以在放在 外部容器里面， 通过容器设置按钮大小
          SizedBox(
            width: 200,
            height: 60,
            
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle( 
                backgroundColor: MaterialStateProperty.all(Colors.green),
                foregroundColor: MaterialStateProperty.all(Colors.red)
              ),
              icon: const Icon(Icons.inbox),
              label: const Text("收到"),
            ),
          )
        ],
      ),
      
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // 带边框的按钮
          OutlinedButton(
            onPressed: () {},
            child: const Text("ElevatedButton"),
          ),

          // 只包含图标的按钮
          IconButton(onPressed: () {}, icon: const Icon(Icons.upgrade))
        ],
      ),
    ]);
  }
}
