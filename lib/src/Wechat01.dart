import 'package:flutter/material.dart';
import 'package:flutter_learn/fonts.dart';

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
            centerTitle: true,
            title: const Text("Wechat"),
            actions: const [
              // 使用 padding不会挤走 其他组件
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20), // 表示在水平方向上添加10个逻辑像素的填充，而垂直方向上没有填充
                child: Icon(SeektaoIcon.search, size: 30, color: Colors.black),
              ),
            ],
          ),
          body: const MyHomePage()),
    );
  }
}

// 实现类似微信底部的导航栏和顶部
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // 生成一个列表
  List<Widget> _initListViewData() {
    List<Widget> templist = [];
    for (var i = 0; i < 20; i++) {
      templist.add(ListTile(
          title: Text(
        "我是一个列表,序号为 $i",
      )));
    }
    return templist;
  }

  @override
  Widget build(BuildContext context) {
    // 获取屏幕的尺寸
    Size screenSize = MediaQuery.of(context).size;
    // 宽度
    double screenWidth = screenSize.width;

    return Stack(
      // clipBehavior: Clip.none, // 添加clipBehavior属性并设置为Clip.none
      children: [
        // // 微信顶部栏：显示
        // Positioned(
        //     top: 2,
        //     width: screenWidth,
        //     height: 50,
        //     child: Container(
        //       alignment: Alignment.center,
        //       color: Colors.white,
        //       child: const Text(
        //         "微信",
        //         style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 30,
        //         ),
        //       ),
        //     )),
        ListView(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
            children: _initListViewData()),
        // 微信底部栏
        Positioned(
          bottom: 0,
          width: screenSize.width, // 占满屏幕，不能使用 double.
          height: 50, // 设置高度，不设置可能无法显示
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: screenWidth / 4,
                  // color: Colors.black26,
                  child: const Column(
                    children: [Icon(SeektaoIcon.message), Text("微信")],
                  ),
                ),
                SizedBox(
                  width: screenWidth / 4,
                  // color: Colors.yellow,
                  child: const Column(
                    children: [Icon(SeektaoIcon.addressBook), Text("通讯录")],
                  ),
                ),
                SizedBox(
                  width: screenWidth / 4,
                  // color: Colors.red,
                  child: const Column(
                    children: [Icon(SeektaoIcon.discover), Text("发现")],
                  ),
                ),
                SizedBox(
                  width: screenWidth / 4,
                  // color: Colors.blue,
                  child: const Column(
                    children: [Icon(SeektaoIcon.person), Text("我的")],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
