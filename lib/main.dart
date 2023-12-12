import 'package:flutter/material.dart';
import './pages/namedroute/circle_of_friends.dart';
import './pages/namedroute/collect.dart';
import './pages/namedroute/mailbox.dart';
import './pages/namedroute/nearby.dart';
import './pages/namedroute/setting.dart';
import './pages/namedroute/home1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // TODO 1. 定义 路由
  Map routes = {
    "/": (context) => HomePage(),
    "/circleoffriends": (context) => CircleOfFriends(),
    "/collect": (context) => Collect(),
    "/mailbox": (context) => Mailbox(),
    // "/nearby": (context, {arguments}) {
    //   return Nearby(arguments: arguments);
    // },
    "/nearby": (context, {arguments}) => Nearby(arguments: arguments),
    "/setting": (context) => Setting(),
  };

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter 路由跳转传值",

      initialRoute: "/",

      // TODO 2. 配置 onGenerateRoute 固定写法
      onGenerateRoute: (RouteSettings settings) {
        final String? name = settings.name;
        final Function? pageContentBuilder = routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments),
            );
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context),
            );
            return route;
          }
        }
        return null;
      },
    );
  }
}
