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
            backgroundColor: const Color(0xFF2196F3),
            title: const Text(
              'Dark-Shadow-Button',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            elevation: 5,
            shadowColor: Colors.black,
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF2294F2),
                        Color(0xFF2E79D9),
                        Color(0xFF3764C6),
                        Color(0xFF3F52B6),
                      ]
                  )
              ),
              child: Container(
                  alignment: Alignment.center,
                  height: 170,
                  width: 280,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1.5),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.deepOrange,
                            Colors.deepOrange,
                            Colors.white,
                            Colors.green,
                            Colors.green,
                          ]
                      )
                  ),
                  child: const Text('☸',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 50,
                      )
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}