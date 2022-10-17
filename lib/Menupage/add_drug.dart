import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:intl/intl.dart';

class Add_drug extends StatefulWidget {
  const Add_drug({super.key});

  @override
  State<Add_drug> createState() => _Add_drugState();
}

class _Add_drugState extends State<Add_drug> {
  DateTime _selecteDate = DateTime.now();
  String _startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7ECFF),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 47, 50),
        centerTitle: true,
        title: Text('เพิ่มยา'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          SizedBox(height: 10),
          buildText('ชื่อยา'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
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
          buildText('      ประเภทยา'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
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
                      color: Color.fromARGB(255, 243, 243, 243)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          buildText('      หมายเหตุ'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
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
                      color: Color.fromARGB(255, 255, 255, 255)),
                  fillColor: Color.fromARGB(255, 247, 247, 247),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          buildTextLong('จำนวนยาที่ได้รับต่อครั้ง'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
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
                      color: Color.fromARGB(255, 255, 254, 254)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          buildText('วันที่'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  hintText:
                      '${_selecteDate.day}/${_selecteDate.month}/${_selecteDate.year}',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today_outlined),
                    color: Colors.grey,
                    onPressed: () {
                      print('เลือกวันที่');
                      _getDateFromUser();
                    },
                  ),
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
                      color: Color.fromARGB(255, 0, 0, 0)),
                  fillColor: Color.fromARGB(255, 247, 247, 247),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          buildTextLong1('เวลารับประทานยา'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 16),
              decoration: InputDecoration(
                  hintText: '${_startTime}',
                  suffixIcon: IconButton(
                    onPressed: () {
                      print('เลือกเวลา');
                      _getTimeFromUser(isStartTime: true);
                    },
                    icon: Icon(
                      Icons.access_time_rounded,
                      color: Colors.grey,
                    ),
                  ),
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
                      color: Color.fromARGB(255, 0, 0, 0)),
                  fillColor: Color.fromARGB(255, 247, 247, 247),
                  filled: true),
            ),
          ),
          SizedBox(height: 10),
          Material(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xff2F3A61),
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(125, 15, 125, 15),
              onPressed: () {},
              child: Text(
                "ยืนยัน",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
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
        margin: EdgeInsets.fromLTRB(0, 0, 270, 1),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
  Widget buildTextLong(String text) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 120, 1),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
  Widget buildTextLong1(String text) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 170, 1),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2050),
    );

    if (_pickerDate != null) {
      setState(() {
        _selecteDate = _pickerDate;
        print(_selecteDate);
      });
    } else {
      print('ค่าว่างหรือมีบางอย่างผิดพลาด');
    }
  }

  _getTimeFromUser({required bool isStartTime}) async {
    var _pickedTime = await _showTimePicker();
    print(_pickedTime.format(context));
    String _formatedTime = _pickedTime.format(context);
    print(_formatedTime);
    if (_pickedTime == null)
      print("time canceld");
    else if (isStartTime)
      setState(() {
        _startTime = _formatedTime;
      });
    else if (!isStartTime) {
      setState(() {});
      //_compareTime();
    }
  }

  _showTimePicker() {
    return showTimePicker(
      initialEntryMode: TimePickerEntryMode.input,
      context: context,
      initialTime: TimeOfDay(
        hour: int.parse(_startTime.split(":")[0]),
        minute: int.parse(
          _startTime.split(":")[1].split(" ")[0],
        ),
      ),
    );
  }
}
