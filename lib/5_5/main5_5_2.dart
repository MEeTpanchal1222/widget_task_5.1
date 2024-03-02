import 'package:flutter/material.dart';

void main() {
  runApp(const Splitter());
}

class Splitter extends StatefulWidget {
  const Splitter({super.key});

  @override
  State<Splitter> createState() => _Splitter();
}

class _Splitter extends State<Splitter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  const Color(0xFF212121),
        appBar: AppBar(
          backgroundColor: const Color(0xFF212121),
          centerTitle: true,
          title: const Text(
            'SPLITTER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 190,vertical: 25),
                    height: 80,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFC107),
                    ),
                    child: const Text('1', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 190,vertical: 25),
                    height: 80,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFC107),
                    ),
                    child: const Text('2', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 190,vertical: 25),
                    height: 80,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFC107),
                    ),
                    child: const Text('3', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 190,vertical: 25),
                    height: 80,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFC107),
                    ),
                    child: const Text('4', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 190,vertical: 25),
                    height: 80,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFC107),
                    ),
                    child: const Text('5', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 190,vertical: 25),
                    height: 80,
                    width: 390,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFC107),
                    ),
                    child: const Text('6', style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                  ),
                ],
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 160),
                      height: 390,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFC107),
                      ),
                      child: const Text('7', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 160),
                      height: 390,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFC107),
                      ),
                      child: const Text('8', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 160),
                      height: 390,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFC107),
                      ),
                      child: const Text('9', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 160),
                      height: 390,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFC107),
                      ),
                      child: const Text('10', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 160),
                      height: 390,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFC107),
                      ),
                      child: const Text('11', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 160),
                      height: 390,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFC107),
                      ),
                      child: const Text('12', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}