import 'package:all_app/pages/all_page.dart';
import 'package:all_app/pages/home_page.dart';
import 'package:all_app/pages/welcom.dart';
import 'package:all_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash2(),
      getPages: [
        GetPage(name: '/', page: () => const Splash2()),
        GetPage(name: '/second', page: () => const Welcome()),
        GetPage(name: '/third', page: () => const AllPage()),
      ],
    );
  }
}
