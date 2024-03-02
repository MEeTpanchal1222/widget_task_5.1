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
     backgroundColor: Colors.white,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.orange,
        child:
        Center(child: Text('Emoji  😊',style: TextStyle(color: Colors.black87,fontSize: 40),)), 
      ),
      appBar: AppBar(
         backgroundColor: const Color(0xFFBBBBBB),
        centerTitle: true,
        title: const Text('smile for mee'),
             toolbarHeight: 30,

      ),
    body: Center(
    child: Container(
    width: 420, height: 420,
    alignment: Alignment.center,
    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.orange,),
    child:Container(
    width: 350, height: 350,
    alignment: const Alignment(-0.55, -0.50),
    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.orange,
    border: Border(bottom: BorderSide(color: Colors.red,width: 77))
    ),
    child: Container(
      width: 97, height: 97,
    alignment: const Alignment(90, 0),
    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle,
    ),

    child: Container(
    width: 94,
    height: 94,
    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white,
    ),

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