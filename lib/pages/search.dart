import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("搜索页面"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
