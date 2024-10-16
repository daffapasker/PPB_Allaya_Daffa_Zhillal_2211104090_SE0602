import 'package:flutter/material.dart';

class JenisListView extends StatelessWidget {
  const JenisListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D'];
    final List<int> colorCodes = <int>[600, 500, 100, 200];

    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Jenis ListView"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: entries.length, // Tambahkan itemCount agar sesuai dengan jumlah data
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index % colorCodes.length]], // Menambahkan mod untuk menghindari out of range
            child: Center(
              child: Text("Entry ${entries[index]}"),
            ),
          );
        },
      ),
    );
    return scaffold;
  }
}
