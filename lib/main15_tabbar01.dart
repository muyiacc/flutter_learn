import 'package:flutter/material.dart';
import 'package:flutter_learn/fonts.dart';
import './pages/home.dart';
import './pages/address_book.dart';
import './pages/discover.dart';
import './pages/person.dart';
import './pages/bigadd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      home: const MyHomePage(),

      // 去掉 debugg 提示
      debugShowCheckedModeBanner: false,
    );
  }
}

// 设置侧边栏
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 切换bar索引使用
  int _currentIndex = 0;

  // 定义列表用于获取页面
  final List<Widget> _listPages = [
    const HomePage(),
    const AddressBookPage(),
    const BigAdd(),
    const DiscoverPage(),
    const PersonPage(),
  ];

  // 定位当前的bar
  void _setCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter App")),

      // 左侧侧边栏
      drawer: Drawer(
          child: ListView(
        children: [
          // 使用
          const UserAccountsDrawerHeader(
            // 设置用户头像
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pic.netbian.com/uploads/allimg/230930/172809-1696066089d383.jpg"),
            ),
            accountName: Text("seektao"), // 设置用户名
            accountEmail: Text("seektao@seektao.cc"), // 设置用户邮箱
            arrowColor: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.home),
            title: const Text("个人主页"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.search),
            title: const Text("搜索"),
          ),
        ],
      )),
      // 主体内容
      body: _listPages[_currentIndex],
      // 设置底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // 点击的回调函数，能够获取点击的tab索引值
        onTap: (index) {
          // 需要使用  setState， 否则页面不会更改
          _setCurrentIndex(index);
        },
        fixedColor: Colors.blue, // 选中的颜色
        type: BottomNavigationBarType.fixed, // 底部导航如果超过3个，则需要指定，否则不显示
        items: const [
          BottomNavigationBarItem(icon: Icon(SeektaoIcon.message), label: "微信"),
          BottomNavigationBarItem(
              icon: Icon(SeektaoIcon.addressBook), label: "通讯录"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
          BottomNavigationBarItem(
              icon: Icon(SeektaoIcon.discover), label: "发现"),
          BottomNavigationBarItem(icon: Icon(SeektaoIcon.person), label: "我的"),
        ],
      ),
      // 设置底部的浮动按钮，放置中间
      floatingActionButton: SizedBox(
        // margin: const EdgeInsets.only(bottom: 1),
        // color: Colors.red,
        width: 65,
        height: 65,
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.blue : Colors.white,
          onPressed: () {
            _setCurrentIndex(2);
          },
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
      // 设置浮动按钮的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
