import 'package:flutter/material.dart';
import './pages/namedroute/circle_of_friends.dart';
import './pages/namedroute/collect.dart';
import './pages/namedroute/mailbox.dart';
import './pages/namedroute/nearby.dart';
import './pages/namedroute/setting.dart';
import './pages/namedroute/home1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),

      // 路由配置
      // 初始化路由
      initialRoute: "/",
      // 添加 routes
      routes: {
        "/" : (context) => HomePage(),
        "/circleoffriends" : (context) => CircleOfFriends(),
        "/collect" : (context) => Collect(),
        "/mailbox" : (context) => Mailbox(),
        // "/nearby" : (context) => Nearby(),
        "/setting" : (context) => Setting(),
      },
    );
  }
}