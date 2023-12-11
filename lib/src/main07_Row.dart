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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Row() 横向排列
    return Container(
      // width: 600,
      // height: 1200,

      width: double.infinity,   // 代表无限
      height: double.infinity,
      color: Colors.grey,

      // alignment: Alignment.center,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,  // 横向排列中间显示
        // mainAxisAlignment: MainAxisAlignment.end,  // 横向排列靠右显示
        // mainAxisAlignment: MainAxisAlignment.start,  // 横向排列靠左显示,默认值
        // mainAxisAlignment: MainAxisAlignment.spaceAround,  // 横向排列元素中间间隔距离比两边宽
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,  // 横向排列边上没有距离
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // 横向排列等距离显示

        // mainAxisSize: MainAxisSize.max, // 没搞懂

        // 相对于父组件,纵轴显示位置
        crossAxisAlignment: CrossAxisAlignment.center, 

        // 
        // textDirection: TextDirection.ltr,

        children: [
          IconContainer(
            Icons.home,
            color: Colors.red,
          ),
          IconContainer(
            Icons.search,
            color: Colors.greenAccent,
          ),
          IconContainer(
            Icons.category,
            color: Colors.black,
          ),
          // IconContainer(
          //   Icons.car_crash,
          //   color: Colors.blue,
          // ),
          // IconContainer(
          //   Icons.house,
          //   color: Colors.grey,
          // ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer(this.icon, {super.key, required this.color});  // required代表是必须添加的参数，因为 成员变量中 color 不是可 null 的类型，

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 120,
        width: 120,
        color: color,
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ));
  }
}
