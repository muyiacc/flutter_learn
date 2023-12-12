import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 其他页面跳转到此页面进行路由传值
class Nearby extends StatefulWidget {
  final Map? arguments;
  const Nearby({super.key, this.arguments});

  @override
  State<Nearby> createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }
  
  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
    appBar: AppBar( 
      title: Text("Nearby"),
    ),
      body: const Center(
        child: Text(
          "Nearby",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}