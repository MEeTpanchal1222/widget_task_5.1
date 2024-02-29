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
    DateTime dateTime1 = DateTime.now();
    Timer.periodic(Duration(seconds: 1), (timer) { setState(() {
      dateTime1 = DateTime.now();
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
                      color: (dateTime1.hour <= 19)?Colors.white:Colors.black,
                      boxShadow: [
                        BoxShadow(blurRadius: (dateTime1.hour == 12)?30:(dateTime1.hour ==13)?40:(dateTime1.hour ==14)?50:(dateTime1.hour ==15)?60:(dateTime1.hour ==16)?40:(dateTime1.hour ==17)?20:0)
                      ],
                        shape: BoxShape.circle
                    ),
                    child:  Center(
                      child: Stack(
                        children: [
                          Transform.rotate(
                              angle: dateTime1.second* 6* pi /180,
                              child: VerticalDivider(
                                color: (dateTime1.hour >= 19)?Colors.redAccent:Colors.red ,thickness: 6,indent: 30,endIndent: 130,),
                            ),
                          Transform.rotate(
                            angle: dateTime1.minute* 6* pi /180,
                            child:VerticalDivider(
                              color:(dateTime1.hour >= 19)?Colors.white:Colors.black ,thickness: 8,indent: 40,endIndent: 130,),
                          ),
                          Transform.rotate(
                            angle: dateTime1.hour*30+(dateTime1.minute*pi/180),
                            child:VerticalDivider(
                              color:(dateTime1.hour >= 19)?Colors.white:Colors.black  ,thickness: 6,indent: 70,endIndent: 130,),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),





                ],
              ),


           SizedBox(
             height: 180,
           ),
           if(dateTime1.hour < 12)
            Text(
              "Good Morning",//time
              style: TextStyle(fontSize: 40),
            ),
            if(dateTime1.hour == 12)
              Text(
                "Good Noon",//time
                style: TextStyle(fontSize: 40),
              ),
            if(dateTime1.hour >= 12)
              Text(
                "Good Afternoon",//time
                style: TextStyle(fontSize: 40),
              ),
            if(dateTime1.hour >= 19)
              Text(
                "Good Night",//time
                style: TextStyle(fontSize: 40),
              ),
            SizedBox(
              height: 20,
            ),
            Text(
              _time_String,//time
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
