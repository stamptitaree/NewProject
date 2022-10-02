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
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff2F3A61),
              child: MaterialButton(
                padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Add_drug()));
                },
                child: Text(
                  "+เพิ่มยา ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff2F3A61),
              child: MaterialButton(
                padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHome()));
                },
                child: Text(
                  "รายการยา",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff2F3A61),
              child: MaterialButton(
                padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHome()));
                },
                child: Text(
                  "ประวัติยา",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff2F3A61),
              child: MaterialButton(
                padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHome()));
                },
                child: Text(
                  "ข้อมูลส่วนตัว",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        )),
      )),
    );
  }
}
