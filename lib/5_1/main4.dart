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
          title:const Text('Mashal',style: TextStyle(
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
                width: 130,
                decoration: const BoxDecoration(
                  color: Colors.brown,
                  border: Border.symmetric(
                    vertical: BorderSide(
                      color: Colors.white,
                      width: 30,
                    ),
                    horizontal: BorderSide(
                      color: Colors.brown,
                      width: 30,
                    ),
                  ),
                ),
                child :Text('🔥',style: TextStyle(
                  height: -2.2,
                  fontSize: 55,

                ),
                )

              ),
            )
        ),
      ),
      );
  }
}
