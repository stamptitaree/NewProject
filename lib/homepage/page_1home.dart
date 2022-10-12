import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:welcome/Menupage/add_drug.dart';
import 'package:welcome/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7ECFF),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Add_drug()));
              },
              icon: Icon(Icons.medical_information),
              label: Text(
                "เพิ่มยา",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 102),
                  backgroundColor: Color(0xff804F4F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.assignment),
              label: Text(
                "รายการยา",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 76),
                  backgroundColor: Color(0xff804F4F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.medication_liquid),
              label: Text(
                "ประวัติยา",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 84),
                  backgroundColor: Color(0xff804F4F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              label: Text(
                "ข้อมูลส่วนตัว",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                  backgroundColor: Color(0xff804F4F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            SizedBox(height: 40),
          ],
        )),
      )),
    );
  }
}
