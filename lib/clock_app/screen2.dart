import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/clock_app/clock_app.dart';


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
    home:const StopwatchScreen(), );
  }
}
class StopwatchScreen extends StatefulWidget {
  const StopwatchScreen({super.key});

  @override
  _StopwatchScreenState createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  late Timer _timer;
  int _secondsElapsed = 0;
  bool _isRunning = false;

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
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _secondsElapsed++;
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
  double _calculateProgressValue(int seconds) {
    if (seconds <= 1) {
      return 0.1;
    } else if (seconds <= 60) {
      return (seconds - 1) / 59;
    } else {
      return 1.0;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
         title:const Text('Stopwatch'),
      actions: [
        IconButton(
          icon: const Icon(Icons.stop),
          onPressed: _isRunning ? _stopTimer : null,
        ),
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: _resetTimer,
        ),
      ],

    ),
      bottomNavigationBar:BottomNavigationBar(
      items: [const BottomNavigationBarItem(icon: Icon(Icons.alarm_rounded),label: 'alram'),
        BottomNavigationBarItem(icon: GestureDetector(
          onTap: () {
            Navigator.push(
                context,MaterialPageRoute(builder: (context) => const clock_app())
            );
          },
            child: const Icon(Icons.access_time_filled_sharp)),label: 'World clock'),
        const BottomNavigationBarItem(icon: Icon(Icons.stop_circle_rounded),label: 'Stoopwatch'),
        //BottomNavigationBarItem(icon: Icon(Icons.watch),label: 'Timer')
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
                    value:  _calculateProgressValue(_secondsElapsed),
                    strokeWidth: 10,
                    backgroundColor: Colors.grey[300],
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                Text(
                  _formatTime(_secondsElapsed),
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (!_isRunning) {
                  _startTimer();
                  setState(() {
                    _isRunning = true;
                  });
                }
              },
              child: Text(_isRunning ? 'Running' : 'Start'),
            ),
          ],
        ),
      ),
    );
  }
}
