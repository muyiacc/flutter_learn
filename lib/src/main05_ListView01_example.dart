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
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.home, color: Colors.orange,),  // 设置图标
          title: Text("首页"),  // 标题
        ),
        Divider(), // 下划线
        ListTile(
          leading: Icon(Icons.event_note_outlined, color: Colors.green),  // 设置图标
          title: Text("全部订单"),  // 标题
        ),
        Divider(), // 下划线
        ListTile(
          leading: Icon(Icons.payment),  // 设置图标
          title: Text("待付款"),  // 标题
        ),
        Divider(), // 下划线
        ListTile(
          leading: Icon(Icons.car_repair_outlined),  // 设置图标
          title: Text("待收货"),  // 标题
        ),
        Divider(), // 下划线
        ListTile(
          leading: Icon(Icons.collections, color: Colors.red),  // 设置图标
          title: Text("收藏"),  // 标题
          trailing: Icon(Icons.chevron_right_outlined),
        ),
        Divider(), // 下划线
        ListTile(
          leading: Icon(Icons.person_2),  // 设置图标
          title: Text("在线客户"),  // 标题
          trailing: Icon(Icons.chevron_right_outlined),
        ),
        Divider(), // 下划线
      ],
    );
  }
}