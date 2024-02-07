import 'package:flutter/material.dart';

void main()
{
  runApp(const Bolt());
}

class Bolt extends StatefulWidget {
  const Bolt({super.key});

  @override
  State<Bolt> createState() => _BoltState();

}

class _BoltState extends State<Bolt> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF212121),
          centerTitle: true,
          toolbarHeight: 70,
          title: Text('BOLT',style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            letterSpacing: 15,
          ),
          ),
        ),
        body: Row(
          children: [
            Container(
              height: 800,
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xFFFFC107),
              ),
            ),
            Expanded(
              child:
              Container(
                padding: EdgeInsets.symmetric(vertical: 350,horizontal:25),
                height: 850,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFF212121),
                ),
                child: Text('⚡',style: TextStyle(
                  fontSize: 40,
                )),
              ),

            ),
            Container(
              height: 800,
              width: 140,
              decoration: BoxDecoration(
                color: Color(0xFFFFC107),
              ),
            ),
          ],
        ),

      ),
    );
  }
}