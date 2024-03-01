import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:untitled/clock_app/screen2.dart';





class clock_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
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
    Timer.periodic(const Duration(seconds: 1),(timer)  => _getTime());//refesha value at variable by getTime function
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
    Timer.periodic(const Duration(seconds: 1), (timer) { setState(() {
      dateTime1 = DateTime.now();
    });}
    );
    return Scaffold(
      appBar: AppBar(
        title: const Row(
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
           BottomNavigationBarItem(icon:GestureDetector(
             onTap: () {
               Navigator.push(
                 context,MaterialPageRoute(builder: (context) => stopwacth())
               );
             },
               child: Icon(Icons.stop_circle_rounded)),label: 'Stoopwatch'),
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
           color: (index%5==0)?(dateTime1.hour >= 19)?Colors.white:Colors.black:(dateTime1.hour >= 19)?Colors.grey:Colors.grey,
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


           const SizedBox(
           height: 150,
           ),
           if(dateTime1.hour < 12)
           const Text(
           "Good Morning",//time
           style: TextStyle(fontSize: 40),
           ),
           if(dateTime1.hour == 12)
           const Text(
           "Good Noon",//time
           style: TextStyle(fontSize: 40),
           ),
           if(dateTime1.hour > 12 && dateTime1.hour <19)
           const Text(
           "Good Afternoon",//time
           style: TextStyle(fontSize: 40),
           ),
           if(dateTime1.hour >= 19)
           const Text(
           "Good Night",//time
           style: TextStyle(fontSize: 40),
           ),
           const Text("India Standard Time",style: TextStyle(color: Colors.black38),),
           const SizedBox(height: 10,),
           Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Text("${dateTime1.timeZoneName} "),
           const SizedBox(width: 15,),
           (dateTime1.month ==1)?const Text('JAN'): (dateTime1.month ==2)?const Text('FEB'): (dateTime1.month ==3)?const Text('MARCH'): (dateTime1.month ==4)?const Text('APRIL'): (dateTime1.month ==5)?const Text('MAY'): (dateTime1.month ==6)?const Text('JUNE'): (dateTime1.month ==7)?const Text('JULY'): (dateTime1.month ==8)?const Text('AUG'): (dateTime1.month ==9)?const Text('SEP'): (dateTime1.month ==10)?const Text('OCT'): (dateTime1.month ==11)?const Text('NOV'): (dateTime1.month ==12)?const Text('DEC'):const Text(' '),
           const SizedBox(width: 10,),
           Text("${dateTime1.day}"),
           const SizedBox(width: 10,),
           (dateTime1.weekday ==1)?const Text('MONDAY'): (dateTime1.weekday ==2)?const Text('TUESDAY'): (dateTime1.weekday ==3)?const
           Text('WEDSDAY'):(dateTime1.weekday==4)?const Text('THURESDAY'): (dateTime1.weekday ==5)?const Text('FRIDAY'): (dateTime1.weekday ==6)?const Text('SETRDAY'): (dateTime1.weekday==7)?const Text('SUNDAY'):const Text(""),
              ],
            ),


            const SizedBox(
              height: 20,
            ),
            Text(
              _time_String,//time
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
