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
          leading: const Icon(Icons.account_circle),
          title: const Text('John Doe'),
          subtitle: const Text('johndoe@example.com'),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // 点击ListTile时的操作
             _showDialog(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Jane Smith'),
          subtitle: const Text('janesmith@example.com'),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // 点击ListTile时的操作
            _showDialog(context);
          },
        ),
      ],
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog Title'),
          content: const Text('This is the content of the dialog.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
