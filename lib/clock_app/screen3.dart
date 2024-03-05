import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/clock_app/clock_app.dart';
import 'package:untitled/clock_app/screen2.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: TimerScreen(),
    );
  }
}

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late Timer _timer;
  int _secondsElapsed = 1;
  bool _isRunning = false;
  late int meet = 1;

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
        if (_isRunning && _secondsElapsed > 0) {
          _secondsElapsed--;
        } else  {
          _timer.cancel();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer'),
        actions: [
          IconButton(
            icon: Icon(Icons.stop),
            onPressed: () {
              setState(() {
                _isRunning = false;
                _stopTimer();
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetTimer,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_rounded),
            label: 'TIMER',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  clock_app()),
                );
              },
              child: Icon(Icons.access_time_filled_sharp),
            ),
            label: 'World clock',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const stopwacth())
                );
              },
                child: Icon(Icons.stop_circle_rounded)),
            label: 'Stopwatch',
          ),
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
                    value: _secondsElapsed / (60 * meet) ,
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

            SizedBox(height: 70,),
            Row(
              children: [
                SizedBox(width: 100),
                ElevatedButton(
                  onPressed: () {
                    if (!_isRunning) {
                      _startTimer();
                      meet = 5;
                      setState(() {
                        _isRunning = true;
                        _secondsElapsed = 60 * 5;
                      });
                    }
                  },
                  child: Text('5 min'),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    if (!_isRunning) {
                      _startTimer();
                      meet = 1;
                      setState(() {
                        _isRunning = true;
                        _secondsElapsed = 60 * 1;
                      });
                    }
                  },
                  child: Text('1 min'),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 100),
                ElevatedButton(
                  onPressed: () {
                    if (!_isRunning) {
                      _startTimer();
                      meet = 10;
                      setState(() {
                        _isRunning = true;
                        _secondsElapsed = 60 * 10;
                      });
                    }
                  },
                  child: Text('10 min'),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {
                    if (!_isRunning) {
                      _startTimer();
                      meet = 20;
                      setState(() {
                        _isRunning = true;
                        _secondsElapsed = 60 * 20;
                      });
                    }
                  },
                  child: Text('20 min'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
