import 'package:flutter/material.dart';

class HRMS_Screen extends StatefulWidget {
  const HRMS_Screen({super.key});

  @override
  State<HRMS_Screen> createState() => _HRMS_ScreenState();
}

class _HRMS_ScreenState extends State<HRMS_Screen> {
  List<int> eCode = [11239];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E294E),
      appBar: AppBar(
        backgroundColor: Color(0xff1E294E),
        leading: Icon(
          Icons.lock_open_outlined,
          color: Colors.yellow,
          size: 32,
        ),
        toolbarHeight: 200,
        centerTitle: true,
        title: Text(
          'HRMS',
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.question_mark_rounded,
              color: Colors.yellow,
              size: 27,
            ),
          ),
        ],
        flexibleSpace: Container(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/coatpantPhoto.jpeg'),
                radius: 50,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Hello Code $eCode',
                style: TextStyle(color: Colors.yellow, fontSize: 26),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: 500,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Row 1
                Row(
                  children: [
                    Expanded(
                      child: cardes(
                          'Attendance', 'assets/hrms_images/Attendance.png'),
                    ),
                    Expanded(
                      child: cardes('Expense', 'assets/hrms_images/pay.png'),
                    ),
                    Expanded(
                      child: cardes('Task', 'assets/hrms_images/task.png'),
                    ),
                  ],
                ),
                // Row 2
                Row(
                  children: [
                    Expanded(
                      child: cardes('Leaves', 'assets/hrms_images/Leaves.png'),
                    ),
                    Expanded(
                      child: cardes('PaySlip', 'assets/hrms_images/pay.png'),
                    ),
                    Expanded(
                      child: cardes('Letter', 'assets/hrms_images/Letter.png'),
                    ),
                  ],
                ),
                // Row 3
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: cardes(
                          'Seperation', 'assets/hrms_images/Seperation.png'),
                    ),
                    Expanded(
                      child: cardes('My Drs', 'assets/hrms_images/DRs.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardes(
    text,
    image,
  ) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 110,
              child: Card(
                shape: CircleBorder(),
                shadowColor: Colors.grey,
                elevation: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    image,
                    width: 55,
                  ),
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff1E294E),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
