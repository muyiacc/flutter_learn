// 导入mateial
import 'package:flutter/material.dart';

// 入口函数
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Hello Title AppBar"),),
      body: const Column(
        children: [
          MyApp(),
          SizedBox(height: 20), // 设置高度
          ImageCircular(),
          SizedBox(height: 20), // 设置高度
          MyClipoval()
        ],
      )

    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        decoration: const BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.circular(10)
        ),
        child: Image.network(
          "https://i0.hdslb.com/bfs/face/ec4155ddc0f3f0fc292c7aebc75c0b426af61380.jpg@150w_150h.jpg",
          // fit: BoxFit.fill  // 充满容器，但是可能会变形
          // fit: BoxFit.cover  // 充满容器，剪切方式
          // fit: BoxFit.fitHeight  // 充满容器
          repeat: ImageRepeat.repeatX,
        ),
      )
    );
  }
}


// 实现圆形图片
class ImageCircular extends StatelessWidget {
  const ImageCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      // margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(75),
        image: const DecorationImage(
          image: NetworkImage("https://i0.hdslb.com/bfs/face/ec4155ddc0f3f0fc292c7aebc75c0b426af61380.jpg@150w_150h.jpg"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}

// 使用 圆形容器 创建圆形图片
class MyClipoval extends StatelessWidget {
  const MyClipoval({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network("https://i0.hdslb.com/bfs/face/ec4155ddc0f3f0fc292c7aebc75c0b426af61380.jpg@150w_150h.jpg",
      width: 150,
      height: 150,
      fit: BoxFit.cover,
      )
    );
  }
}