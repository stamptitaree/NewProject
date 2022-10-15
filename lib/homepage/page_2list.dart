import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:welcome/home.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7ECFF),
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
                      MaterialPageRoute(builder: (context) => MyHome()));
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
