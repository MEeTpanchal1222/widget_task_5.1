import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DigitalClock(),
    );
  }
}

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  late String _time_String;
//first we formet our data of time in string function and return the formated value;
  //we use padleft(2 degit and 0 for singal value like 1 that can we see 01;
  String _formatDateTime({required DateTime dateTime}) {
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
  }
  //now we store our data of time in string variable refrasha value of datatime  at variable
  void initState() {
    _time_String = _formatDateTime(dateTime: DateTime.now());// store vaule of time in variable
    Timer.periodic(Duration(seconds: 1),(timer)  => _getTime());//refesha value at variable by getTime function
    super.initState();//recurson
  }

  void _getTime() {
    final DateTime Time = DateTime.now();
    final String formattedTime = _formatDateTime(dateTime: Time);//time variable have new value that we have to formate by formated function and put value in new vareable ;
    setState(() {
      _time_String = formattedTime;//refresha screen and put new datatime
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    Timer.periodic(Duration(seconds: 1), (timer) { setState(() {
      dateTime = DateTime.now();
    });}
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Clock'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Stack(
                children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(blurRadius: 30)
                      ],

                      shape: BoxShape.circle
                    ),
                  ),
                ),

                     Transform.rotate(
                      angle: dateTime.second* 6* pi /180,
                      child:const VerticalDivider(
                        color: Colors.white ,thickness: 6,indent: 30,endIndent: 110,),
                    ),


                ],
              ),


           SizedBox(
             height: 100,
           ),
            Text(
              _time_String,//time
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
