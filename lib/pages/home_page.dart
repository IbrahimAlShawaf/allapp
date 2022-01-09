// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:favorite_button/favorite_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // carosel start
  int activeIndex = 0;
  final Images = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
  ];
  // carosel end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // carosel start
              CarouselSlider.builder(
                itemCount: Images.length,
                itemBuilder: (context, index, realIndex) {
                  final Image = Images[index];
                  return buildImage(Image, index);
                },
                options: CarouselOptions(
                    height: 280,
                    // viewportFraction: 1,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlayInterval: const Duration(seconds: 2),
                    //reverse: true,
                    onPageChanged: (index, reason) {
                      setState(() => activeIndex = index);
                    }),
              ),
              const SizedBox(
                height: 32,
              ),
              buildIndicator(),
              // carosel end
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'حمل التطبيقات من هنا',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Card(
                  color: Colors.blueGrey[600],
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: const Image(image: AssetImage('images/1.jpg')),
                    title: const Text(
                      'تطبيق إنجــــازي ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      'حمل من هنا',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    trailing: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        //print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        launch(
                            'https://play.google.com/store/apps/details?id=com.ramighabon.shawwafapp');
                      },
                      icon: Icon(
                        Icons.download_outlined,
                        size: 25,
                      ),
                      label: Text('Download'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        Share.share(
                            'https://play.google.com/store/apps/details?id=com.ramighabon.shawwafapp');
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                      label: Text('Share'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 4.0,
                  height: 2.0,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  color: Colors.blueGrey[600],
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: const Image(image: AssetImage('images/2.jpg')),
                    title: const Text(
                      'تطبيق الثقافة العلمية',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      'حمل من هنا',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    trailing: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        //print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        launch(
                            'https://play.google.com/store/apps/details?id=com.thaqafa21.edu');
                      },
                      icon: Icon(
                        Icons.download_outlined,
                        size: 25,
                      ),
                      label: Text('Download'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        Share.share(
                            'https://play.google.com/store/apps/details?id=com.thaqafa21.edu');
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                      label: Text('Share'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 4.0,
                  height: 2.0,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  color: Colors.blueGrey[600],
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: const Image(image: AssetImage('images/3.jpg')),
                    title: const Text(
                      'تطبيق إختبار الثقافة العلمية',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      'حمل من هنا',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    trailing: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        //print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        launch(
                            'https://play.google.com/store/apps/details?id=com.quizu1.quizapp');
                      },
                      icon: Icon(
                        Icons.download_outlined,
                        size: 25,
                      ),
                      label: Text('Download'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        Share.share(
                            'https://play.google.com/store/apps/details?id=com.quizu1.quizapp');
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                      label: Text('Share'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 4.0,
                  height: 2.0,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  color: Colors.blueGrey[600],
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: const Image(image: AssetImage('images/6.jpg')),
                    title: const Text(
                      ' تطبيق إختبار الثقافة العلمية 2',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      'حمل من هنا',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    trailing: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        //print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        launch(
                            'https://play.google.com/store/apps/details?id=com.quiz2.qiuzapp');
                      },
                      icon: Icon(
                        Icons.download_outlined,
                        size: 25,
                      ),
                      label: Text('Download'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        Share.share(
                            'https://play.google.com/store/apps/details?id=com.quiz2.qiuzapp');
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                      label: Text('Share'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 4.0,
                  height: 2.0,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  color: Colors.blueGrey[600],
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: const Image(image: AssetImage('images/4.jpg')),
                    title: const Text(
                      'تطبيق ملزمتـي ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      'حمل من هنا',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    trailing: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        //print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        launch(
                            'https://play.google.com/store/apps/details?id=com.thsummary.thaqafa22');
                      },
                      icon: Icon(
                        Icons.download_outlined,
                        size: 25,
                      ),
                      label: Text('Download'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        Share.share(
                            'https://play.google.com/store/apps/details?id=com.thsummary.thaqafa22');
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                      label: Text('Share'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 4.0,
                  height: 2.0,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  color: Colors.blueGrey[600],
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: const Image(image: AssetImage('images/5.jpg')),
                    title: const Text(
                      'AL YASER - تطبيق الياسر ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      'حمل من هنا',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    trailing: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        //print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        launch(
                            'https://play.google.com/store/apps/details?id=com.aboamar.aboamar');
                      },
                      icon: Icon(
                        Icons.download_outlined,
                        size: 25,
                      ),
                      label: Text('Download'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        padding: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 30,
                      ),
                      onPressed: () {
                        Share.share(
                            'https://play.google.com/store/apps/details?id=com.aboamar.aboamar');
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                      label: Text('Share'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 4.0,
                  height: 2.0,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

// carosel start
  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: Images.length,
        effect: const JumpingDotEffect(
          dotHeight: 20,
          dotWidth: 20,
          activeDotColor: Colors.red,
          dotColor: Colors.black12,
        ),
      );
}

Widget buildImage(String image, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      color: Colors.grey,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
// carosel end