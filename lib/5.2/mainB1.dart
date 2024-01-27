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
      home:  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Launch Button',style: TextStyle(
              color: Colors.white,
            ),
            ),
            centerTitle: true,
          ),
          body:  Center(
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 18,
                    spreadRadius: 18,
                  )
                ],
                color: Colors.black,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width: 2),
              ),
              child: const Text('GO',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}