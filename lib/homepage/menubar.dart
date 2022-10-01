import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:welcome/home.dart';
import 'package:welcome/homepage/drawer.dart';

class Menubar extends StatefulWidget {
  const Menubar({super.key});

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 62, 47, 50),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าหลัก',
            backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'รายการยา',
              backgroundColor: Colors.brown),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication_liquid),
              label: 'ประวัติยา',
              backgroundColor: Colors.brown),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'ข้อมูลส่วนตัว',
              backgroundColor: Colors.brown),
        ],
      ),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 62, 47, 50),
          centerTitle: true,
          title: Text('เมนู'),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()))
              },
            )
          ]),
      backgroundColor: Color.fromARGB(255, 210, 210, 252),
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
