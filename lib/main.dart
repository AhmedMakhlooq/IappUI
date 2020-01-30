import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  Container Courses(String heading) {
    return Container(
        width: 170.0,

        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Wrap(
            children: <Widget>[
              ListTile(
                title: Text(heading,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),

              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar( // APP BAR
          backgroundColor: Colors.blueAccent,
          title: const Text('بسم الله الرحمن الرحيم'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                print('be like jameel');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15.0)),color: Colors.white,),
                  height: 150,

                  child: ListTile(

                    title: Text('أكمل المشاهدة',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold), textAlign: TextAlign.right,),
                  ),
                ),
                Text('ينصح به',style: TextStyle(fontSize: 30, color: Colors.white),textAlign: TextAlign.right),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.only(top: 0.0, bottom: 10.0),

                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Courses("الصلاة"),
                      Courses("فقه"),
                      Courses("عقائد"),
                      Courses("علم الأصول"),
                    ],
                  ),
                ),
                Text('أفضل المشاهدات',style: TextStyle(fontSize: 30, color: Colors.white),textAlign: TextAlign.right,),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.only(top: 0.0),
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Courses('سيرة الأئمة'),
                      Courses("باب الخمس"),
                      Courses("باب الزكاة"),
                      Courses("باب الطهارة"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bmnav.BottomNav(
          items: [
            bmnav.BottomNavItem(Icons.home, label: 'القائمة'),
            bmnav.BottomNavItem(Icons.search, label: 'البحث'),
            bmnav.BottomNavItem(Icons.dashboard, label: 'الدورا ت'),
            bmnav.BottomNavItem(Icons.settings, label: 'الإعدادات'),
          ],
        ),
      ),
    );
  }
}
