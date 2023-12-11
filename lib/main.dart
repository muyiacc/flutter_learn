import 'package:flutter/material.dart';

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
      home: const MyHomePage(),

      // 去掉 debugg 提示
      debugShowCheckedModeBanner: false,
    );
  }
}

// 设置 顶部可滑动的tab，
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 生命周期函数：当组件初始化的时候就会执行
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    super.initState();
    // 初始化：
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home), // 左侧的按钮图标
          title: const Text("Flutter App"),
          backgroundColor: Colors.white,
          actions: [
            // 右侧的按钮图标
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ],

          bottom: TabBar(
            tabs: const [
              Tab(child: Text("关注")),
              Tab(child: Text("推荐")),
              Tab(child: Text("同城")),
            ],
            controller: _tabController, 

            // isScrollable: true, // 设置是否可以滚动
            padding: const EdgeInsets.all(10),
            indicatorColor: Colors.blueGrey,  // 小横条颜色
            labelColor: Colors.blue, // 选中 tab的颜色
            indicatorWeight: 3, // 小横条厚度
            // indicatorPadding: const EdgeInsets.all(10) // 选项卡下方指示器的内边距
          ),
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
