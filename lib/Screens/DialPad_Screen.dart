import 'package:flutter/material.dart';

class Dail_Screen extends StatefulWidget {
  const Dail_Screen({super.key});

  @override
  State<Dail_Screen> createState() => _Dail_ScreenState();
}

class _Dail_ScreenState extends State<Dail_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(231, 29, 42, 85),
        centerTitle: true,
        title: Text(
          'DIALER',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        width: 700,
        height: 900,
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFields('Name'),
              TextFields('Email'),
              TextFields('Number'),
              //Row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Dial_Pad(Colors.yellow, Colors.pink, 1),
                  Dial_Pad(Colors.green, Colors.blue, 2),
                  Dial_Pad(Colors.red, Colors.blue, 3),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Dial_Pad(Colors.yellow, Colors.pink, 4),
                  Dial_Pad(Colors.green, Colors.blue, 5),
                  Dial_Pad(Colors.red, Colors.blue, 6),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Dial_Pad(Colors.yellow, Colors.pink, 7),
                  Dial_Pad(Colors.green, Colors.blue, 8),
                  Dial_Pad(Colors.red, Colors.blue, 9),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Dial_Pad(Colors.green, Colors.greenAccent, 'Call'),
                  Dial_Pad(Colors.green, Colors.blue, 0),
                  Dial_Pad(Colors.red, Colors.redAccent, 'Remove'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget TextFields(String text) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: text,
          ),
        ),
      ),
    );
  }

  Widget Dial_Pad(Colour, Colours, numbers) {
    return Container(
      width: 120,
      height: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colour, Colours],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          numbers.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
