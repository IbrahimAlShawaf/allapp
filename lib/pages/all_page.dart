import 'package:all_app/pages/drawer.dart';
import 'package:all_app/pages/home_page.dart';
import 'package:all_app/pages/web_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  _AllPageState createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {

  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
       appBar: AppBar(
         centerTitle: true,
          title: const Text(
            'My Apps تطبيقـــاتي',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(tabs: [
            Tab(text: 'الرئيسية', icon: Icon(Icons.home),),
            Tab(text: 'تواصل معنا', icon: Icon(FontAwesomeIcons.addressCard),),
            Tab(text: 'موقعنا', icon: Icon(FontAwesomeIcons.globeAsia),),
          ],),
          elevation: 0.0,
          backgroundColor: Colors.blueGrey[900],
       ),
       body: const TabBarView(
         children: [
                 Center(child: HomePage(),),
                 Center(child: MyDrawer()),
                 Center(child: WebViewExample()) //webview
         ],
       ),
      ),);
      
    
  }
  

}