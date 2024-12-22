import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/my_home_page.dart';
import 'view/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyHomePage(),
        ),
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
        ),
      ],
    );
  }
}
