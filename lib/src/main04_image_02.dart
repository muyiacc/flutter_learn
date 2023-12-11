import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter APP"),),
        // body: const Column(
        //   children: [
        //     MyApp(),
        //   ],
        // ),
        body: const MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( 
        width: 300,
        height: 300,
        decoration: BoxDecoration( 
          color: Colors.amber,
          borderRadius: BorderRadius.circular(75), // 设置圆角
        ),
        child: Image.network(
          "https://st.tencent-cloud.com/qb/tool/images/cmd/95beb358-73e9-47b1-9bce-4a95b0d69f69.png",
          scale: 2,
          alignment: Alignment.topLeft,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}