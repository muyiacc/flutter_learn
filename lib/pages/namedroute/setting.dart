import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            const Text(
              "Setting",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            // 不需要导入类也可以直接跳转了
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/nearby");
              },
              child: const Text("命名路由跳转至附近"),
            ),
          ],
        ),
      ),
    );
  }
}
