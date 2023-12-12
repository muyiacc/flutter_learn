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
        appBar: AppBar(
          // leading: const Icon(Icons.home), // 左侧的按钮图标
          // title: const Text("Flutter App"),
          // backgroundColor: Colors.white,
          // actions: [
          //   // 右侧的按钮图标
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          // ],

          title: TabBar(controller: _tabController, tabs: const [
            Tab(child: Text("关注")),
            Tab(child: Text("推荐")),
            Tab(child: Text("同城")),
          ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView(
              children: const [
                ListTile(
                  title: Text("关注"),
                ),
              ],
            ),
            ListView(
              children: const [
                ListTile(
                  title: Text("推荐"),
                ),
              ],
            ),
            ListView(
              children: const [
                ListTile(
                  title: Text("同城"),
                ),
              ],
            ),
          ],
        ));
  }
}
