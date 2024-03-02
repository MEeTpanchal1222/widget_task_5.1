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
          backgroundColor: Colors.lightGreen[700],
          // leading:  Icon(Icons.shopping_bag_sharp,color: Colors.pinkAccent,
          // size: 40,),
          title:const Text('my App',style: TextStyle(
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
            color: Colors.lightGreen,
            height:600,
            width: 600,
            alignment: Alignment.center,
            child: Container(
              height: 350,
              alignment: Alignment.center,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Container(
                height: 300,
                alignment: Alignment.center,
                width: 300,
                decoration:const BoxDecoration(
                  color: Colors.lightGreenAccent,
                ) ,
                child: const SizedBox(
                  height: 300,
                  width: 300,
                  child:Center(child: Text('oooo',style: TextStyle(color :Colors.black87,fontSize:95,letterSpacing: -29),)),

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
