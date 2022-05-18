import 'package:flutter/material.dart';

class RowColumnLayout extends StatefulWidget {
  const RowColumnLayout({Key? key}) : super(key: key);

  @override
  State<RowColumnLayout> createState() => _RowColumnLayoutState();
}

class _RowColumnLayoutState extends State<RowColumnLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Column Layout'),
      ),
      // body: Row(
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: const [
      //     Icon(Icons.home),
      //     Icon(Icons.star),
      //     Icon(Icons.favorite),
      //   ],
      // ),
      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: const [
      //     Icon(Icons.home),
      //     Icon(Icons.star),
      //     Icon(Icons.favorite),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.home),
                Icon(Icons.star),
                Icon(Icons.favorite),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.notifications),
                Icon(Icons.person),
                Icon(Icons.edit),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.account_box),
                Icon(Icons.adjust),
                Icon(Icons.settings),
              ],
            )
          ],
        ),
      ),
    );
  }
}