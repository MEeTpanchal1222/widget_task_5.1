import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/clock_app/clock_app.dart';
import 'package:untitled/clock_app/screen3.dart';


class stopwacth extends StatelessWidget {
  const stopwacth({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home:StopwatchScreen(), );
  }
}
class StopwatchScreen extends StatefulWidget {
  @override
  _StopwatchScreenState createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  late Timer _timer;
  int _secondsElapsed = 0;
  bool _isRunning = false;
  double second = 0;
  bool isStop = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_isRunning )
          {
            _secondsElapsed++;
            }
      });
    });
  }
  String _formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    String hoursStr = (hours % 24).toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }
  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _isRunning = false;
    });
  }

  void _resetTimer() {
    _timer.cancel();
    setState(() {
      _secondsElapsed = 0;
      _isRunning = false;
    });
  }
  // Future<void>stopwacth({required bool start}) async{
  //   await Future.delayed(
  //     const Duration(seconds: 1),
  //         () {
  //       setState(() {
  //         if(second >= 0 && second <59 && start){
  //           second++;
  //         }else{
  //           second = 0;
  //         }
  //       });
  //     },
  //   );
  //
  //   if(isStop)
  //   {
  //     stopwacth(start: true);
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text('Stopwatch'),
        actions: [
          IconButton(
              icon: Icon(Icons.stop),
              onPressed: (){
                setState(() {
                  _isRunning = false;
                  _isRunning ?null: _stopTimer;
                  // stopwacth(start: false);
                });

              }

          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetTimer,
          ),
        ],

      ),
      bottomNavigationBar:BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: GestureDetector(
          onTap: () {
            Navigator.push(
                context,MaterialPageRoute(builder: (context) =>TimerApp() )
            );
          },
            child: Icon(Icons.alarm_rounded,color: Colors.grey,)),label: 'TIMER'),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,MaterialPageRoute(builder: (context) => clock_app())
                );
              },
              child: Icon(Icons.access_time_filled_sharp)),label: 'World clock'),
          BottomNavigationBarItem(icon: Icon(Icons.stop_circle_rounded,color: Colors.purple.shade700,),label: 'Stopwatch'),
        ],
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: CircularProgressIndicator(
                    value: _secondsElapsed % 60 /60,
                    strokeWidth: 15,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.purple.shade700),
                  ),
                ),
                Text(
                    _formatTime(_secondsElapsed),
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {

                if (!_isRunning) {
                  _startTimer();
                  // stopwacth(start: true);
                  setState(() {
                    _isRunning = true;

                  });
                }
              },
              child: Text(_isRunning ? 'Running ' : 'Start'),
            ),
          ],
        ),
      ),
    );
  }
}