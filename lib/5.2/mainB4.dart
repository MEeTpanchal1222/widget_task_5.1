import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          backgroundColor: const Color(0xFF48416A),
          appBar: AppBar(
            backgroundColor: const Color(0xFF48416A),
            title: const Text('Gredient-Button', style:
            TextStyle(
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
              height: 80,
              width: 220,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    // color: Colors.redAccent,
                    // blurRadius: 20,
                    // spreadRadius: 3.5,
                  )
                ],
                color: Colors.blue,
                borderRadius: const BorderRadius.all(Radius.circular(35)),
                gradient: const LinearGradient(
                    colors: [
                      Color(0xFF942EB4),
                      Color(0xFF803FBF),
                      Color(0xFF635ACF),
                      Color(0xFF3287EA),
                    ]
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              child: const Text(
                '*Flutter*',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}