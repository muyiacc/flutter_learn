import 'package:flutter/material.dart';

void main(){
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
        appBar: AppBar(title: const Text("Flutter APP"),),
        body: const MyHomePage()
      ),
    );
  }
}

// 使用 GridView.count
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(crossAxisCount: 4,   // 横轴子元素的个数
//       children: const [
//         Icon(Icons.ac_unit_outlined),
//         Icon(Icons.sunny),
//         Icon(Icons.water),
//         Icon(Icons.cloudy_snowing),
//         Icon(Icons.ac_unit_outlined),
//         Icon(Icons.ac_unit_outlined),
//         Icon(Icons.ac_unit_outlined),
//         Icon(Icons.ac_unit_outlined),
//         Icon(Icons.ac_unit_outlined),
//       ],
//     );
//   }
// }

// 使用 GridView.extent
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(maxCrossAxisExtent: 60,  // 指定横轴子元素最大的长度
      children: const [
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.sunny),
        Icon(Icons.water),
        Icon(Icons.cloudy_snowing),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.ac_unit_outlined),
      ],
    );
  }
}
