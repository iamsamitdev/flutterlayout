// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ConstainerLayout extends StatefulWidget {
  const ConstainerLayout({Key? key}) : super(key: key);

  @override
  State<ConstainerLayout> createState() => _ConstainerLayoutState();
}

class _ConstainerLayoutState extends State<ConstainerLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Layout'),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          // color: Colors.teal,
          // color: Colors.teal[200],
          // color: const Color.fromARGB(255, 66, 165, 245),
          // color: const Color.fromRGBO(66, 160, 45, 0.5),
          // color: const Color(0xFF3be2a5),
          decoration: BoxDecoration(
            color: const Color(0xFF3be2a5),
            border: Border.all(width: 5, color: Colors.brown),
            // borderRadius: BorderRadius.circular(20)
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: NetworkImage('https://www.itgenius.co.th/backend/assets/images/user_avatar/2qxyqud0ha7wj4nf6p26xxy0heoyyxkz.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          // child: const Text('This is my content'),
        ),
      ),
    );
  }
}