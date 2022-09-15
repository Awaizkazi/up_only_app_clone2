import 'package:flutter/material.dart';

class Info_Screen extends StatefulWidget {
  const Info_Screen({super.key});

  @override
  State<Info_Screen> createState() => _Info_ScreenState();
}

class _Info_ScreenState extends State<Info_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color.fromARGB(231, 29, 42, 85),
        centerTitle: true,
        title: Text(
          'Information',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff1E294E),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the App',
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 60, 4),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'We are not boasting, we are the first app in the\n market which is a boon to our employees and \nyou our customer. We at UPONLY Technologies \nbelieves in evolving constantly.We provide\nplatform , reports, Al based Saas product and\nautomation for B2B & B2C businesses.This App\nis devised by our techno-financial experts\nbased in mumbai and aim to create the\n simplest solutions for the most difficult but\nstrive to better in helping our customers save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 500,
              height: 247,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'About the name!',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff1E294E),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 60),
                    child: Text(
                      'We called the company and the App UPONLY\nas it is combination of two words ,UP and ONLY\nas we constantly work trielessly to ensure we\nare always UP,ONLY in all conditions.',
                      style: TextStyle(
                        fontSize: 18.4,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 89, 24, 100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
