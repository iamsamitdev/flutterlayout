// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class CenterLayout extends StatefulWidget {
  const CenterLayout({Key? key}) : super(key: key);

  @override
  State<CenterLayout> createState() => _CenterLayoutState();
}

class _CenterLayoutState extends State<CenterLayout> {

  void _onItemTapped(int index){
    setState(() {
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Layout'),
      ),
      body: const Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(fontSize: 24.5),
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About'
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          )
        ],
        currentIndex: 0,
        onTap: _onItemTapped,
      ),
    );
  }
}
