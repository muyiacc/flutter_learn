import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter APP"),
        ),
        // body: const MyAPP(),
        body: const Column(
          children: [
            MyAPP(), 
            MyButton(),
            MyText()
          ],
        )),
  ));
}


class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center, // 设置容器元素所处方位
        width: 200.0, // 容器宽度
        height: 200.0, // 容器高度
        // 容器样式
        decoration: BoxDecoration(
            color: Colors.teal, // 容器背景
            border: Border.all(
              // 容器边框
              color: Colors.yellow,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(5), // 边框圆角
            // 容器阴影
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                blurRadius: 10.0,
                // spreadRadius: 10.0,
              )
            ],
            // 渐变
            gradient: const LinearGradient(colors: [Colors.green, Colors.red])),
        // 元素
        child: const Text(
          "this is a container",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}

// 创建一个按钮
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blue, 
          borderRadius: BorderRadius.circular(5),

      ),
      width: 200,
      height: 50,
      margin: const EdgeInsets.all(10.0),
      child: const Text(
        "按钮",
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}

// 学习 Text 组件
class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: const Text(
        "this is a text winget,这是一个文本,this is a text winget",
        style: TextStyle(
          color: Colors.red,
          fontStyle: FontStyle.italic,  // 字体倾斜
          fontSize: 20, // 字体大小
          fontWeight: FontWeight.w500, // 字体加粗
          letterSpacing: 3,  // 字间距
          wordSpacing: 6, // 单词间距
          // decoration: TextDecoration.lineThrough,  // 设置线
          decoration: TextDecoration.underline,  // 设置线
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.dashed // 虚线
        ),
        textAlign: TextAlign.center,
        maxLines: 2,  // 设置最多显示几行
        overflow: TextOverflow.ellipsis,  // 结合maxLines,没有显示的文本信息用 ... 表示
        
      ),
    );
  }
}

