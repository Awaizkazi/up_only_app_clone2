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
        backgroundColor: Colors.transparent,
        toolbarHeight: 200,
        title: Text(
          'UpOnly\nWelcomes you!',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          tooltip: 'Menu',
          splashColor: Color.fromARGB(255, 158, 138, 217),
          highlightColor: Color.fromARGB(255, 5, 9, 23),
          hoverColor: Colors.yellow,
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 35,
            ),
            // iconSize: 20,
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
                searchbar(),
                cards(
                  'Call Module',
                  'To being calling, get lead\ninformation here',
                  'assets/call.png',
                  Color.fromARGB(255, 45, 14, 2),
                  Color.fromARGB(255, 243, 130, 90),
                ),
                cards(
                  'F2F',
                  'Have you met in person?\nUpdate here.',
                  'assets/F2F.png',
                  Color.fromARGB(255, 18, 52, 57),
                  Colors.cyan,
                ),
                cards(
                  'CRM',
                  'Has the lead to become a\nclient? Update here',
                  'assets/CRM.png',
                  Color.fromARGB(223, 47, 42, 2),
                  Color.fromARGB(208, 247, 224, 10),
                ),
                cards(
                  'HCMS',
                  'Health Care\nManagement System',
                  'assets/HCMS.png',
                  Colors.purple,
                  Colors.deepPurple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cards(cardTitle, cardSubTitle, cardImage, g1Color, g2Color) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 720,
        height: 110,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    cardSubTitle,
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ],
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

  Widget searchbar() {
    return Container(
      width: 340,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
          Text(
            'Search',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
