import 'package:flutter/material.dart';

class stackscreen extends StatefulWidget {
  const stackscreen({super.key});

  @override
  State<stackscreen> createState() => _stackscreenState();
}

class _stackscreenState extends State<stackscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan stack'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      );
  }
}
