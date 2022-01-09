import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const Card(
              elevation: 20,
              shape: CircleBorder(
                side: BorderSide(
                  color: Colors.yellowAccent,
                  width: 5,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/main.png'),
                width: 350,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('أ. ابراهيم احمد الشواف',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            const Text('FLUTTER مبرمج تطبيقات ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
              height: 3.0,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'يمكنك التواصل معي على',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              onTap: () {
                launch('tel: +970594314120');
              },
              selectedColor: Colors.white,
              iconColor: Colors.green[300],
              textColor: Colors.yellowAccent,
              leading: const Icon(
                Icons.phone,
                size: 35,
              ),
              title: const Text(
                'My Phone',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Call Me',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[300]),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
            ListTile(
              onTap: () {
                launch('mailto: thaqafa12@gmail.com');
              },
              selectedColor: Colors.white,
              iconColor: Colors.grey[900],
              textColor: Colors.yellowAccent,
              leading: const Icon(
                Icons.email,
                size: 35,
              ),
              title: const Text(
                'My Email',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Send Your Massege',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900]),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
            ListTile(
              onTap: () {
                launch('https://www.facebook.com/van.clicker.3');
              },
              selectedColor: Colors.white,
              iconColor: Colors.blue,
              textColor: Colors.yellowAccent,
              leading: const Icon(
                Icons.facebook,
                size: 35,
              ),
              title: const Text(
                'My Facebook Page',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Follow Me',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
            ListTile(
              onTap: () {
                launch('https://twitter.com/RnT5k');
              },
              selectedColor: Colors.white,
              iconColor: Colors.blue[600],
              textColor: Colors.yellowAccent,
              leading: const Icon(
                FontAwesomeIcons.twitter,
                size: 35,
              ),
              title: const Text(
                'My Twitter',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Follow Me',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
            ListTile(
              onTap: () {
                launch('https://www.instagram.com/ibraheemshawaf/');
              },
              selectedColor: Colors.white,
              iconColor: Colors.red[900],
              textColor: Colors.yellowAccent,
              leading: const Icon(
                FontAwesomeIcons.instagram,
                size: 35,
              ),
              title: const Text(
                'My Instagram',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Follow Me',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
            ListTile(
              onTap: () {
                launch('https://t.me/Borhom1981');
              },
              selectedColor: Colors.white,
              iconColor: Colors.indigo[800],
              textColor: Colors.yellowAccent,
              leading: const Icon(
                FontAwesomeIcons.telegramPlane,
                size: 35,
              ),
              title: const Text(
                'My Telegram',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Follow Me',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[800]),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
            ListTile(
              onTap: () {
                launch('http://wa.me/+972594314120');
              },
              selectedColor: Colors.white,
              iconColor: Colors.green[900],
              textColor: Colors.yellowAccent,
              leading: const Icon(
                FontAwesomeIcons.whatsapp,
                size: 35,
              ),
              title: const Text(
                'My Whatsapp',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Send Your Massege',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
            ListTile(
              onTap: () {
                launch('https://www.youtube.com/channel/UCnrm6N_VsKg2DExbshNtZ5A');
              },
              selectedColor: Colors.white,
              iconColor: Colors.red[800],
              textColor: Colors.yellowAccent,
              leading: const Icon(
                FontAwesomeIcons.youtube,
                size: 35,
              ),
              title: const Text(
                'My Youtube Channel',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Subscribe With Me',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[800]),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
