import 'package:flutter/material.dart';

class CircleOfFriends extends StatefulWidget {
  const CircleOfFriends({super.key});

  @override
  State<CircleOfFriends> createState() => _CircleOfFriendsState();
}

class _CircleOfFriendsState extends State<CircleOfFriends> {
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Center(
        child: Text(
          "Circle of Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}