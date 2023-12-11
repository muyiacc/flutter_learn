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
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter APP"),
          ),
          body: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('John Doe'),
          subtitle: Text('johndoe@example.com'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // 点击ListTile时的操作
            print('Tapped on John Doe');
          },
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Jane Smith'),
          subtitle: Text('janesmith@example.com'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // 点击ListTile时的操作
            print('Tapped on Jane Smith');
          },
        ),
      ],
    );
  }
}
