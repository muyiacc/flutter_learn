import 'package:flutter/material.dart';
import './pages/namedroute/circle_of_friends.dart';
import './pages/namedroute/collect.dart';
import './pages/namedroute/mailbox.dart';
import './pages/namedroute/nearby.dart';
import './pages/namedroute/setting.dart';
import './pages/namedroute/home1.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // 路由配置
      // 初始化路由
      initialRoute: "/",
      // 定义 路由
      Map routes: {
        "/" : (context) => HomePage(),
        "/circleoffriends" : (context) => CircleOfFriends(),
        "/collect" : (context) => Collect(),
        "/mailbox" : (context) => Mailbox(),
        "/nearby" : (context) => Nearby(),
        "/setting" : (context) => Setting(),
      },
    );
  }
}