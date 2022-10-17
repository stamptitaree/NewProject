import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:welcome/home.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7ECFF),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          SizedBox(height: 10),
          buildText('ชื่อ-นามสกุล'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15)),
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 240, 255)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          buildText2('ประวัติการแพ้ยา'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.medication_liquid),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15)),
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 240, 255)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          buildText('โรคประจำตัว'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.favorite),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15)),
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 240, 255)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true),
            ),
          ),
          SizedBox(height: 15),
          Material(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xffC35151),
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              child: Text(
                "แก้ไข",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 26,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 15),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(height: 10),
          buildText1('Email'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15)),
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 240, 255)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          buildText1('Passs'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15)),
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 240, 255)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true),
            ),
          ),
          SizedBox(height: 15),
          Material(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xffC35151),
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              child: Text(
                "แก้ไข",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 26,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ))),
    );
  }

  Widget buildText(String text) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 210, 1),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
  Widget buildText1(String text) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 270, 1),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
  Widget buildText2(String text) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 180, 1),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
