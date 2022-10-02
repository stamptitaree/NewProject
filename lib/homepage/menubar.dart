import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:welcome/home.dart';
import 'package:welcome/homepage/drawer.dart';
import 'package:welcome/homepage/page_1home.dart';
import 'package:welcome/homepage/page_2list.dart';
import 'package:welcome/homepage/page_3history.dart';
import 'package:welcome/homepage/page_4user.dart';

class Menubar extends StatefulWidget {
  const Menubar({super.key});

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    ListPage(),
    HitstoryPage(),
    UserPage(),
  ];

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
      body: Center(
        child: screens[currentIndex],
      ),
    );
  }
}
