import 'package:flutter/material.dart';
import 'package:welcome/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo

                Image.asset(
                  'images/welcome_logo.png',
                  // width: 120,
                  // height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 80),

                //Hello again!

                Material(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff804F4F),
                  child: MaterialButton(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHome()));
                    },
                    child: Text('ยินดีต้อนรับ',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
                SizedBox(height: 30),

                Text('แอปพลิเคชันบริหารยา \nสำหรับผู้ป่วยโรคเรื้อรัง',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(236, 186, 42, 14))),
                SizedBox(height: 80),

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
                      "เริ่มต้นการใช้งาน",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
