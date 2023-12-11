import 'package:flutter/material.dart';
import 'package:flutter_learn/fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter APP"),
      ),
      body: const Column(
        children: [
          MyApp(),
        ],
      ),
    ),
  ));
}

// 图标
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(  // 当屏幕显示不够时就会溢出
      children:  [
        Icon(Icons.home), // 主页图标
        SizedBox(
          height: 20,
        ),
        Icon(
          Icons.search,
          size: 100,
          color: Colors.red,
        ), // 搜索
        SizedBox(
          height: 20,
        ),
        // 设置
        Icon(Icons.settings),
        SizedBox(
          height: 20,
        ),
        // 加号 ＋
        Icon(Icons.add),
        Icon(Icons.shopping_cart_outlined),
        Icon(
          Icons.wechat,
          color: Colors.green,
        ),
        Icon(
          Icons.bluetooth,
          color: Colors.blue,
        ),
        Icon(
          Icons.book,
          color: Colors.blue,
        ),

        SizedBox(
          height: 20,
        ),
        // 使用自定义的图标
        Icon(SeektaoIcon.book), // 使用自定义图标的书
        Icon(SeektaoIcon.keyborad), // 使用自定义图标的键盘
        Icon(SeektaoIcon.phone), // 使用自定义图标的手机
        Icon(SeektaoIcon.computer), // 使用自定义图标的电脑
        Icon(SeektaoIcon.display), // 使用自定义图标的显示器
        Icon(SeektaoIcon.clouddisk), // 使用自定义图标的云盘
        Icon(SeektaoIcon.mouse), // 使用自定义图标的鼠标

        SizedBox(
          height: 20,
        ),
        Icon(Icons.access_alarm),
      ],
    );
  }
}
