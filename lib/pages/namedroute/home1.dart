import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 生命周期函数：当组件初始化的时候就会执行
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 初始化：
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // 路由跳转：不需要导入类也可以直接跳转了
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: const Text("命名路由跳转"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/setting");
              },
              child: const Text("命名路由跳转至设置"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/nearby",
                  arguments: {
                    "title": "我是命名路由传值",
                    "aid": 100,
                  },
                );
              },
              child: const Text("跳转到 附近 并传值 "),
            ),
          ],
        ),
      ),
    );
  }
}
