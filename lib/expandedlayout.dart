import 'package:flutter/material.dart';

class ExpandLayout extends StatefulWidget {
  const ExpandLayout({Key? key}) : super(key: key);

  @override
  State<ExpandLayout> createState() => _ExpandLayoutState();
}

class _ExpandLayoutState extends State<ExpandLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Layout'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.green,
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              color: Colors.yellow,
              child: Column(
                children: const [
                  SizedBox(height: 40,),
                  Text("Welcome"),
                  SizedBox(height: 20,),
                  Text("To My App"),
                ],
              ),
            )
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.blue,)
          )
        ],
      ),
    );
  }
}