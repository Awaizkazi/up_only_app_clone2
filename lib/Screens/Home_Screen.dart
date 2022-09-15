// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E294E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 200,
        title: Text(
          'UpOnly\nWelcomes you!',
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
                cards('Call Module', 'assets/call.png',
                    Color.fromARGB(255, 0, 16, 1), Colors.green),
                cards(
                  'F2F',
                  'assets/F2F.png',
                  Color.fromARGB(255, 18, 52, 57),
                  Colors.cyan,
                ),
                cards(
                  'CRM',
                  'assets/CRM.png',
                  Color.fromARGB(223, 47, 42, 2),
                  Color.fromARGB(208, 247, 224, 10),
                ),
                cards(
                  'HCMS',
                  'assets/HCMS.png',
                  Color.fromARGB(223, 47, 42, 2),
                  Color.fromARGB(208, 247, 224, 10),
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
