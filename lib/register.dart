import 'package:flutter/material.dart';
import 'package:welcome/homepage/menubar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => {Navigator.of(context).pop()},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff669486),
            ),
          )),
      backgroundColor: Color.fromARGB(255, 255, 241, 216),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                SizedBox(height: 10),
                Image.asset(
                  'images/adduser.png',
                  width: 140,
                  height: 150,
                  //fit: BoxFit.cover,
                ),
                //SizedBox(height: 50),

                //Hello again!
                Text('สร้างบัญชี',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 145, 79, 79))),
                SizedBox(height: 40),

                //email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff669486),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(255, 250, 250, 250)),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 255, 255, 255)),
                        fillColor: Color(0xff669486),
                        filled: true),
                  ),
                ),
                SizedBox(height: 15),

                // password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff669486),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(255, 250, 250, 250)),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 255, 255, 255)),
                        fillColor: Color(0xff669486),
                        filled: true),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff669486),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(255, 250, 250, 250)),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'ชื่อ-นามสกุล',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 255, 255, 255)),
                        fillColor: Color(0xff669486),
                        filled: true),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff669486),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(255, 250, 250, 250)),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'ประวัติแพ้ยา',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 255, 255, 255)),
                        fillColor: Color(0xff669486),
                        filled: true),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff669486),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(255, 250, 250, 250)),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'โรคประจำตัว',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 255, 255, 255)),
                        fillColor: Color(0xff669486),
                        filled: true),
                  ),
                ),

                SizedBox(height: 25),

                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff2F3A61),
                  child: MaterialButton(
                    padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menubar()));
                    },
                    child: Text(
                      "สมัครสมาชิก",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
