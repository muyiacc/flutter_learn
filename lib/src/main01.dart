import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(appBar: AppBar(title: Text("Hello Flutter"),),
    body: const Center(
      child: Text("hello world",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          // color: Colors.red
          color: Color.fromRGBO(123, 123, 123, 1),
          fontSize: 40.0,
          // backgroundColor: Color.fromARGB(255, 123, 186, 127)
        )),
    ),),
  ));
}
