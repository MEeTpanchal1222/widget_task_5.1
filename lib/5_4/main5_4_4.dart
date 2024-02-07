import 'package:flutter/material.dart';

void main() {
  runApp(const Selecter());
}

class Selecter extends StatefulWidget {
  const Selecter({Key? key}) : super(key: key);

  @override
  _SelecterState createState() => _SelecterState();
}

class _SelecterState extends State<Selecter> {
  List<Color> colors = [
    Colors.black87,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.cyan,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.amber,

  ];

  List<IconData> icons = [
    Icons.add,
    Icons.access_alarm,
    Icons.search,
    Icons.android,
    Icons.add_call,
    Icons.add_circle,
    Icons.arrow_back_ios_new,
    Icons.arrow_forward_ios_outlined,
    Icons.security,
    Icons.accessibility_new,
    Icons.icecream,
    Icons.image,
  ];

  int selectedColorIndex = 0;
  int selectedIconIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEFF1F3),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Icons_Editor'),
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 280,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 0.01,
                    ),
                  ]
              ),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Icon(
                  icons[selectedIconIndex],
                  size: 100,
                  color: colors[selectedColorIndex],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 131),
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 0.01,
                    ),
                  ]
              ),
              child: Text('Select Color',style: TextStyle(
                color: Colors.black54,
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 120,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 0.01,
                    ),
                  ]
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colors.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColorIndex = index;
                        });
                      },
                      child: Container(
                        width: 90,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(50),
                          border: selectedColorIndex == index
                              ? Border.all(color: Colors.black87, width: 3)
                              : null,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 130),
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 0.01,
                    ),
                  ]
              ),
              child: Text('Select Icon',style: TextStyle(
                color: Colors.black54,
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              height: 120,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 30,
                      spreadRadius: 0.01,
                    ),
                  ]
              ),

              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIconIndex = index;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0.01,
                              blurRadius: 2,
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          border: selectedIconIndex == index
                              ? Border.all(color: Colors.black12, width: 2)
                              : null,
                        ),
                        child: Icon(
                          icons[index],
                          size: 40,
                          color: colors[selectedColorIndex],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),


            // Display the selected icon at the center

          ],
        ),
      ),
    );
  }
}