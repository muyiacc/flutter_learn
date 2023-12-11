import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter APP"),
      ),
      // body: const Column(
      //   children: [
      //     MyApp(),
      //   ],
      // ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initListData(){
    List<Widget> list = [];
    
    for(var i = 0;i < 20; i++){
      list.add(
        ListTile(
          title: Text("我是一个列表---$i"),
        )
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }

}
