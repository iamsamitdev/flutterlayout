import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutterlayout/expandedlayout.dart';
import 'package:flutterlayout/welcomescreen.dart';
// import 'package:flutterlayout/centerlayout.dart';
// import 'package:flutterlayout/containerlayout.dart';
// import 'package:flutterlayout/rowcolumnlayout.dart';
// import 'package:flutterlayout/stacklayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // กำหนดคำสั่งตั้งค่าล็อก Screen เป็นแนวตั้ง
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return const MaterialApp(
      // home: CenterLayout(),
      // home: ConstainerLayout(),
      // home: RowColumnLayout()
      // home: StackLayout(),
      // home: ExpandLayout(),
      home: WelcomeScreen(),
    );
  }
}