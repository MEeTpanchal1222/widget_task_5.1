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
      home: SafeArea(child:
      Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown[400],
            // leading:  Icon(Icons.shopping_bag_sharp,color: Colors.pinkAccent,
            // size: 40,),
            title:const Text('Mix-up',style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,

            ),
            ),
            centerTitle: true,
          ),
             body: Center(
        child: Container(
    alignment: Alignment.bottomRight,
    height: 450,
    width: 500,
    decoration: const BoxDecoration(
    color: Colors.blue,
    ),
    child: Container(
    alignment: Alignment.bottomRight,
    height: 400,
    width: 400,
    decoration: const BoxDecoration(
    color: Colors.yellowAccent,
    ),
    child: Container(
    alignment: Alignment.topLeft,
    height: 350,
    width: 300,
    decoration: const BoxDecoration(
    color: Colors.pink,
    ),
    child: Container(
    alignment: Alignment.topLeft,
    height: 300,
    width: 250,
    decoration: const BoxDecoration(
    color: Colors.orange
    ),
    child: Container(
    alignment: Alignment.center,
    height: 250,
    width: 220,
    decoration: const BoxDecoration(
    color: Colors.green,
    ),
    child: Container(
    height: 160,
    width: 160,
    decoration: const BoxDecoration(
    color: Colors.cyanAccent
    ),
    ),
    )
    ),
    ),
    ),


    ),
    ),
    ),
    ),
    );
  }
}
