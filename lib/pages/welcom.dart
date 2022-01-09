import 'package:all_app/pages/all_page.dart';
import 'package:all_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/books2.jpg'),
          fit: BoxFit.fitHeight,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('أهلاً وسهلاً بك في',
                  style: TextStyle(
                      fontFamily: 'Amiri',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      //letterSpacing: 2.0,
                      color: Colors.grey[50])),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('My Apps تطبيقـــاتي  ',
                  style: TextStyle(
                      fontFamily: 'Amiri',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      //letterSpacing: 2.0,
                      color: Colors.grey[50])),
            ],
          ),
          const SizedBox(height: 200.0),
          Container(
            width: 200,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(130),
              child: FlatButton(
                onPressed: () {
                  Get.to(() => const AllPage());
                },
                child: const Text(
                  ' إبدأ بالتصفح',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                color: Colors.red[500],
              ),
            ),
          ),
          const SizedBox(height: 150.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('برمجة وتصميم',
                  style: TextStyle(
                      fontFamily: 'Amiri',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      //letterSpacing: 2.0,
                      color: Colors.grey[50])),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('أ. ابراهيم أحمد الشواف',
                  style: TextStyle(
                      fontFamily: 'Amiri',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      //letterSpacing: 2.0,
                      color: Colors.grey[50])),
            ],
          ),
        ],
      ),
    ));
  }
}
