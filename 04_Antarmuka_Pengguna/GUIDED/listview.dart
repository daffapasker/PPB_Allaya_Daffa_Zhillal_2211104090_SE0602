import 'package:flutter/material.dart';

class ListViewscreen extends StatefulWidget {
  const ListViewscreen({super.key});

  @override
  State<ListViewscreen> createState() => _ListViewscreenState();
}

class _ListViewscreenState extends State<ListViewscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan List View'),
      ),
      body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 235, 45, 3),
              child: Center(child: Text("tipe A"),),
            ),
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 38, 3, 235),
              child: Center(child: Text("tipe B"),),
            ),
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 162, 235, 3),
              child: Center(child: Text("tipe C"),),
            ),
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 30, 235, 3),
              child: Center(child: Text("tipe D"),),
            ),
          ],
      ),
    );
  }
}
