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
    return '${(dateTime.hour%12).toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
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
        title: Row(
          children: [
            Text('Digital Clock'),
            SizedBox(width: 170,),
            Text('Edit',style: TextStyle(color: Colors.black),),
            SizedBox(width: 20,),
            Text('+',style: TextStyle(color: Colors.black,fontSize: 38),),
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.alarm_rounded),label: 'alram'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp),label: 'World clock'),
          BottomNavigationBarItem(icon: Icon(Icons.stop_circle_rounded),label: 'Stoopwatch'),
          //BottomNavigationBarItem(icon: Icon(Icons.watch),label: 'Timer')
        ],),
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
                        BoxShadow(blurStyle: (dateTime1.hour >= 19)?BlurStyle.inner:(dateTime1.hour ==12)?BlurStyle.normal:(dateTime1.hour >12)?BlurStyle.outer:BlurStyle.normal,blurRadius: (dateTime1.hour == 12)?30:(dateTime1.hour ==13)?40:(dateTime1.hour ==14)?50:(dateTime1.hour ==15)?60:(dateTime1.hour ==16)?40:(dateTime1.hour ==17)?20:0)
                      ],
                        shape: BoxShape.circle
                    ),
                    child:  Center(
                      child: Stack(
                        children: [
                          Center(
                            child: Transform.rotate(
                                angle: dateTime1.second* 6* pi /180,
                                child: VerticalDivider(
                                  color: (dateTime1.hour >= 19)?Colors.redAccent:Colors.red ,thickness: 6,indent: 30,endIndent: 130,),
                              ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: dateTime1.minute* 6* pi /180,
                              child:VerticalDivider(
                                color:(dateTime1.hour >= 19)?Colors.white:Colors.black ,thickness: 8,indent: 40,endIndent: 130,),
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: dateTime1.hour*30*pi/180+((6 * pi /180)*(dateTime1.minute/12)),

                              child:VerticalDivider(
                                color:(dateTime1.hour >= 19)?Colors.white:Colors.black  ,thickness: 6,indent: 70,endIndent: 130,),
                            ),
                          ),
                          ...List.generate(60, (index) => Transform.rotate(

                            angle: (index*6*pi)/180,
                            child:
                              Center(
                                child: Divider(
                                  indent: (index%5==0)?270:280,
                                  color: (index%5==0)?Colors.black:(dateTime1.hour >= 19)?Colors.red:(dateTime1.hour >=19)?Colors.black:Colors.grey,
                                  thickness: (index%5==0)?8:3,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ),
                  ),





                ],
              ),


           SizedBox(
             height: 150,
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
            Text("India Standard Time"),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${dateTime1.timeZoneName} "),
                SizedBox(width: 15,),
                (dateTime1.month ==1)?Text('JAN'): (dateTime1.month ==2)?Text('FEB'): (dateTime1.month ==3)?Text('MARCH'): (dateTime1.month ==4)?Text('APRIL'): (dateTime1.month ==5)?Text('MAY'): (dateTime1.month ==6)?Text('JUNE'): (dateTime1.month ==7)?Text('JULY'): (dateTime1.month ==8)?Text('AUG'): (dateTime1.month ==9)?Text('SEP'): (dateTime1.month ==10)?Text('OCT'): (dateTime1.month ==11)?Text('NOV'): (dateTime1.month ==12)?Text('DEC'):Text(' '),
                SizedBox(width: 10,),
                Text("${dateTime1.day}"),
                SizedBox(width: 10,),
                (dateTime1.weekday ==1)?Text('MONDAY'): (dateTime1.weekday ==2)?Text('TUESDAY'): (dateTime1.weekday ==3)?Text('WEDSDAY'):(dateTime1.weekday==4)?Text('THURESDAY'): (dateTime1.weekday ==5)?Text('FRIDAY'): (dateTime1.weekday ==6)?Text('SETRDAY'): (dateTime1.weekday==7)?Text('SUNDAY'):Text(""),
              ],
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
