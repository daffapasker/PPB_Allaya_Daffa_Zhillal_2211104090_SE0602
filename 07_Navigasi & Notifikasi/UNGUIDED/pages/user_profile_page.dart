import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
        backgroundColor: Colors.green[700],
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman profil pengguna.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
