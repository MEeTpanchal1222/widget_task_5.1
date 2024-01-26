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
      appBar: AppBar(
         backgroundColor: Color(0xFFBBBBBB),
        centerTitle: true,
        title: const Text('smile for mee'),
             toolbarHeight: 30,
      ),
     body:Container(
     child: Center(
       child: Container(
         alignment: Alignment.center,
       height: 300, width: 300,
           decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange,
       ),
         child: Container(
           alignment: Alignment.topRight,
           height: 50, width: 50,
           decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white,

       ),
           child: Container(
             alignment: Alignment.topLeft,
           height: 30, width: 50,
           decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red,

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