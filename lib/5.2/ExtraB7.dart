import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text(
                'gradiant-Button',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 190,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pinkAccent,
                        blurRadius: 50,
                        spreadRadius: 4,
                        offset: Offset(7,35),
                      )
                    ],
                    // color: Colors.cyanAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                      colors:[
                        Colors.purpleAccent,
                        Colors.pinkAccent,
                        Colors.amberAccent,
                        Colors.redAccent,
                      ],
                      begin: Alignment.topLeft,
                    )
                ),
                child: const Text(
                  'Call on action',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}