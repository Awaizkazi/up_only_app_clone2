// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';

class Dashboard_Screen extends StatefulWidget {
  const Dashboard_Screen({super.key});

  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

class _Dashboard_ScreenState extends State<Dashboard_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E294E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 200,
        title: Text(
          'My Dashboard',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: 700,
          height: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                cards('Input Report', 'assets/dashboard_images/InputReport.png',
                    Color.fromARGB(255, 0, 16, 1), Colors.green),
                cards(
                  'Call Report',
                  'assets/dashboard_images/CallReport.png',
                  Color.fromARGB(255, 18, 52, 57),
                  Colors.cyan,
                ),
                cards(
                  'Business Report',
                  'assets/dashboard_images/BusinessReport.png',
                  Color.fromARGB(223, 47, 42, 2),
                  Color.fromARGB(208, 247, 224, 10),
                ),
                cards(
                  'My Earnings',
                  'assets/dashboard_images/MyEarnings.png',
                  Color.fromARGB(255, 12, 1, 40),
                  Color.fromARGB(171, 242, 8, 141),
                ),
                cards(
                  'PMS Update',
                  'assets/dashboard_images/InputReport.png',
                  Color.fromARGB(255, 8, 0, 0),
                  Color.fromARGB(31, 49, 23, 23),
                ),
                cards(
                  'My Follow Up',
                  'assets/dashboard_images/InputReport.png',
                  Color.fromARGB(255, 3, 18, 30),
                  Color.fromARGB(179, 3, 103, 185),
                ),
                cards(
                  'My New Business',
                  'assets/dashboard_images/InputReport.png',
                  Color.fromARGB(255, 244, 60, 23),
                  Color.fromARGB(255, 240, 148, 35),
                ),
                cards(
                  'Pending F2F',
                  'assets/dashboard_images/InputReport.png',
                  Color.fromARGB(255, 3, 43, 4),
                  Colors.green,
                ),
                cards(
                  'Pending NB Login',
                  'assets/dashboard_images/InputReport.png',
                  Color.fromARGB(255, 6, 36, 40),
                  Color.fromARGB(255, 33, 249, 220),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cards(cardTitle, cardImage, g1Color, g2Color) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 720,
        height: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [g1Color, g2Color],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Image.asset(
              cardImage,
              height: 50,
              width: 80,
            ),
          ],
        ),
      ),
    );
  }
}
