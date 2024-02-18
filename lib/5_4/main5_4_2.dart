import 'package:flutter/material.dart';
import 'package:untitled/5_4/4_2_list.dart';

void main() {
  runApp(const Map());
}

class Map extends StatefulWidget {
   const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          toolbarHeight: 60,
          title: Text(
            'Map',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
              icon.length,
                  (index) =>
                  containers(icon[index]['text'], icon[index]['icons']),
            ),
          ),
        ),
      ),
    );
  }
}

Widget containers(String text, IconData icons,)
{
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    height: 90,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        SizedBox.square(
          dimension: 200,
        ),
        Icon(icons),
      ],
    ),
  );
}