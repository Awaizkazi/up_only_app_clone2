// ignore_for_file: file_names, camel_case_types, prefer_const_constructors
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:up_only_app_clone2/Screens/Dashboard_Screen.dart';
import 'package:up_only_app_clone2/Screens/DialPad_Screen.dart';
import 'package:up_only_app_clone2/Screens/HRMS_Screen.dart';
import 'package:up_only_app_clone2/Screens/Home_Screen.dart';
import 'package:up_only_app_clone2/Screens/Info_Screen.dart';

class Starting_Screen extends StatefulWidget {
  const Starting_Screen({super.key});

  @override
  State<Starting_Screen> createState() => _Starting_ScreenState();
}

class _Starting_ScreenState extends State<Starting_Screen> {
  int currentIndex = 0;
  List pages = [
    Home_Screen(),
    Info_Screen(),
    Dashboard_Screen(),
    HRMS_Screen(),
    Dail_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: Color(0xff1E294E),
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(milliseconds: 300),
        selectedIndex: currentIndex,
        backgroundColor: Color.fromARGB(255, 229, 178, 238),
        onItemSelected: (index) {
          // Navigation to another pages by using this
          setState(() {
            currentIndex = index;
          });
        },
        itemCornerRadius: 10,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text('Info'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('HRMS'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.call),
            title: Text('Dial'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
