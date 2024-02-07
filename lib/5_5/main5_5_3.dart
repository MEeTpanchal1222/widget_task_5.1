import 'package:flutter/material.dart';

void main()
{
  runApp(const Wall());
}


class Wall extends StatefulWidget {
  const Wall({super.key});

  @override
  State<Wall> createState() => _Wall();
}

class _Wall extends State<Wall> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF212121),
          title: const Text('THE-WALL',style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 95,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    height: 95,
                    width: 191.1,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 95,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    height: 95,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                    height: 95,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    height: 95,
                    width: 131.4,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 95,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  height: 95,
                  width: 191.1,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 95,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
              ],),
              Row(children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  height: 95,
                  width: 130,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                  height: 95,
                  width: 130,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  height: 95,
                  width: 131.4,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
              ],),
              Row(children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 95,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  height: 95,
                  width: 191.1,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 95,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
              ],),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    height: 95,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                    height: 95,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    height: 95,
                    width: 131.4,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 95,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  height: 95,
                  width: 191.1,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 95,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5D4037),
                  ),
                ),
              ],),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    height: 95,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                    height: 95,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    height: 95,
                    width: 131.4,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5D4037),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}