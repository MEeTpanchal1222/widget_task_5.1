import 'package:flutter/material.dart';
import '4_3_list.dart';

void main()
{
  runApp(const Icons());
}

class Icons extends StatefulWidget {
  const Icons({super.key});

  @override
  State<Icons> createState() => _IconsState();
}

class _IconsState extends State<Icons> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFEFEFE),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Icons'),
          backgroundColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.black,
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(icon1.length, (index) => products(icon1[index]['icon']) )
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon2.length, (index) => products(icon2[index]['icon']) )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon3.length, (index) => products(icon3[index]['icon']) )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon4.length, (index) => products(icon4[index]['icon']) )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon5.length, (index) => products(icon5[index]['icon']) )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon6.length, (index) => products(icon6[index]['icon']) )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon4.length, (index) => products(icon4[index]['icon']) )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon3.length, (index) => products(icon3[index]['icon']) )
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(icon2.length, (index) => products(icon2[index]['icon']) )
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      ,
    );
  }
}


Widget products(IconData icon)
{
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    height: 120,
    width: 120,
    decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE3E3E3),
            offset: Offset(0, 10),
            blurRadius:  5,
            spreadRadius: 5,
          )
        ]
    ),
    child: Icon(icon,size: 50,color: Colors.grey,),
  );
}