import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(appBar: AppBar(title: const Text("Flutter Image"),),
      body: const MyImage(),
    ),
  ));
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    // 一般把图片放在 Controller内，以便控制图片
    return Column( 
      children: [
        // 加载本地图片
        Image.asset("images/01.jpg"),

        // 加载网络图片
        // Image.network("https://st.tencent-cloud.com/qb/tool/images/cmd/95beb358-73e9-47b1-9bce-4a95b0d69f69.png"),
        
        // 设置图片的样式
        Image.network("https://st.tencent-cloud.com/qb/tool/images/cmd/95beb358-73e9-47b1-9bce-4a95b0d69f69.png", 
          scale: 0.75, // 缩放图片
          semanticLabel: "美丽少女",
        )
      ],
    );
  }
}