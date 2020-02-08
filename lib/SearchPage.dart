import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'main.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        // APP BAR
        backgroundColor: Colors.green,
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

      body: Container(
        child: Center(
          child: Text('Search Page', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ),
      ),
      bottomNavigationBar: bmnav.BottomNav(
        index: 0,
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'القائمة'),
          bmnav.BottomNavItem(Icons.search, label: 'البحث'),
          bmnav.BottomNavItem(Icons.dashboard, label: 'الدورا ت'),
          bmnav.BottomNavItem(Icons.settings, label: 'الإعدادات'),
        ],
      ),
    );
  }
}