
// 代码块 importM
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter"),
      ),
      body: const MyApp(),
    ),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return const Center(
//         child: Text("hello world， 我是一个自定义组件",
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//               // color: Colors.red
//               color: Color.fromRGBO(123, 123, 123, 1),
//               fontSize: 40.0,
//               // backgroundColor: Color.fromARGB(255, 123, 186, 127)
//             )),
//       );
//   }
// }

// 代码块快速生成，statelessW
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("hello world， \n 这是一个自定义组件",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            // color: Colors.red
            color: Color.fromRGBO(123, 123, 123, 1),
            fontSize: 40.0,
            // backgroundColor: Color.fromARGB(255, 123, 186, 127)
          )),
    );
  }
}
