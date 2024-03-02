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
            backgroundColor: const Color(0xFF48416A),
            title: const Text(
              'Watch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            elevation: 5,
            shadowColor: Colors.black,
            centerTitle: false,
          ),
          body: Center(
            child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF47426C),
                          Color(0xFF424F7F),
                          Color(0xFF3271B8),
                          Color(0xFF268CE2),
                        ]
                    )
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 10.5,
                          offset: Offset(8, 8)
                      )
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    border: Border.all(color: Colors.grey,width: 0.3),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFF4F7AAE),
                          Color(0xFF416DA1),
                        ]
                    ),
                  ),
                  child: const Text('Flutter',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                )
            ),
          ),
        ),
      ),
    );
  }
}