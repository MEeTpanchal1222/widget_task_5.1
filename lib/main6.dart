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
          backgroundColor: Color.fromRGBO(0, 150, 136,100),
          // leading:  Icon(Icons.shopping_bag_sharp,color: Colors.pinkAccent,
          // size: 40,),
          title: const Text('3d Cube', style: TextStyle(
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
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              color: Color(0xFF009688),
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Color(0xFF33ABA0),
                  width: 50,
                ),
                horizontal: BorderSide(
                  color: Color(0xFF4DB6AC),
                  width: 35,

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
