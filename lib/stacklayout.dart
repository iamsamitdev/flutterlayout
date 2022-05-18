import 'package:flutter/material.dart';

class StackLayout extends StatefulWidget {
  const StackLayout({Key? key}) : super(key: key);

  @override
  State<StackLayout> createState() => _StackLayoutState();
}

class _StackLayoutState extends State<StackLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Layout'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Text('1', style: TextStyle(fontSize: 100.0),)
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: Text('2', style: TextStyle(fontSize: 100.0),)
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: Text('3', style: TextStyle(fontSize: 100.0),)
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: Text('4', style: TextStyle(fontSize: 100.0),)
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: MediaQuery.of(context).size.width * 0.4,
            child: const Text('5', style: TextStyle(fontSize: 100.0),)
          )
        ],
      ),
    );
  }
}