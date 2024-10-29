import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 3,
    child: Scaffold(
        appBar: AppBar(
          title: const Text("menu tab bar"),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.food_bank), 
              text: "menu",
            ),
            Tab(
              icon: Icon(Icons.calendar_month), 
              text: "kalender",
            ),
            Tab(
              icon: Icon(Icons.history), 
              text: "history",
            ),
          ]),
          backgroundColor: Colors.amber,
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("ini konten menu"),
          ),
          Center(
            child: Text("ini konten kalender"),
          ),
          Center(
            child: Text("ini konten history"),
          ),
        ]),
      ),
    );
  }
}