import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home.dart';
import 'package:flutter_learn/pages/search.dart';

class NewsPage extends StatefulWidget {
  final String str;
  const NewsPage({super.key, required this.str});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("新闻页面"),
      ),
      body: Center(
        // 页面显示传入的值
        child: ListView(
          children: [
            Text(widget.str, style: Theme.of(context).textTheme.displaySmall),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const SearchPage();
                    },
                  ),
                );
              },
              child: const Text("点击进入搜索页面"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 返回路由
          Navigator.of(context).pop(
              // const HomePage(),
              );
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
