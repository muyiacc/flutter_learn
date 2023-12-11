import 'package:flutter/material.dart';
import 'package:flutter_learn/listdata.dart';

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

// 使用 GridView.count
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Widget _initGridViewData(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.network(
            listdata[index]['imageUrl'],
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10,),
          Text(
            listdata[index]['title'],
            style: const TextStyle( 
              color: Colors.teal,
              fontSize: 20,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(3),
        itemCount: listdata.length, // 必须限制返回的个数
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.5,
        ),
        itemBuilder: _initGridViewData);
  }
}
