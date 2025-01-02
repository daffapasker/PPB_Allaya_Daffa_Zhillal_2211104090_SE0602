import 'package:flutter/material.dart';
import 'dart:typed_data';

class DisplayScreen extends StatelessWidget {
  final Uint8List imageBytes;

  const DisplayScreen({
    Key? key,
    required this.imageBytes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Screen'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[600],
      ),
      body: Center(
        child: Image.memory(imageBytes),
      ),
    );
  }
}
