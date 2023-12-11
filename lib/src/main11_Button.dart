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

// 按钮
/*
常见的有4个按钮实现类：
1. **TextButton**: 一个简单的文本按钮，没有阴影或填充，当被点击时会有一个透明的背景色。

2. **ElevatedButton**: 一个带有阴影和填充的按钮，通常用于主要操作。

3. **OutlinedButton**: 一个带有边框的按钮，当被点击时会有一个透明的背景色。

4. **IconButton**: 一个只包含图标的按钮，通常用于工具栏或操作栏。

共同的属性有：
- **onPressed**: 必须设置，按钮被点击时触发的回调函数。
- **onLongPress**: 按钮被长按时触发的回调函数。
- **style**: 用于设置按钮的样式，例如文本颜色、背景色等。
- **child**: 必须设置，用于设置按钮中显示的内容，可以是文本、图标或其他Widget。
*/

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // 文本按钮
          TextButton(
            // 这两个参数必须设置
            onPressed: () {},
            child: const Text("TextButton"),
          ),

          // 带阴影和填充的按钮
          ElevatedButton(
            onPressed: () {},
            child: const Text("ElevatedButton"),
          ),
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
