import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Add_drug extends StatefulWidget {
  const Add_drug({super.key});

  @override
  State<Add_drug> createState() => _Add_drugState();
}

class _Add_drugState extends State<Add_drug> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 47, 50),
        centerTitle: true,
        title: Text('เพิ่มยา'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5, color: Color.fromARGB(255, 255, 252, 250)),
                      borderRadius: BorderRadius.circular(20)),
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 240, 255)),
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  filled: false),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5, color: Color.fromARGB(255, 255, 252, 250)),
                      borderRadius: BorderRadius.circular(20)),
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  fillColor: Color(0xff669486),
                  filled: false),
            ),
          ),
          SizedBox(height: 20),
          Material(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xff2F3A61),
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
              onPressed: () {},
              child: Text(
                "++++เพิ่มยา ",
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
      ))),
    );
  }
}
