import 'package:flutter/material.dart';
void main()
{
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}
int count=0;

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,

          //appbar
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            elevation: 1,
            shadowColor: Colors.black,
            title: const Text('Counter App', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
          ),


          //body of app
          body: Center(
            child: Text('$count', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
          ),

          //floating action btn
          floatingActionButton: Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(right: 10, bottom: 10),
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                     count++;
                  });
                },
                shape:  const CircleBorder(),
                backgroundColor: Colors.purple,
                elevation: 1,
                focusElevation: 5,
                splashColor: Colors.white.withOpacity(0.10),
                child: const Icon(Icons.add, size: 25, color: Colors.white,),
              ),
            ),
          )

      ),
    );
  }
}