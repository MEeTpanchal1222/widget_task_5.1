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
          backgroundColor: Colors.red,
          // leading:  Icon(Icons.shopping_bag_sharp,color: Colors.pinkAccent,
          // size: 40,),
          title:const Text('MISSION OF RNW',style: TextStyle(
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
            height: 100,
            alignment: Alignment.center,
            width: 300,
            decoration:BoxDecoration(
              color: Colors.deepOrange[200],
            ) ,
            child: Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  border:Border(left: BorderSide(color: Colors.red,width: 15,))
              ),
              child:RichText(
                text :const TextSpan(
                  children: <TextSpan>[

                    TextSpan(
                        text: 'shapping  "skill" for "scaling" higher\n',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                        )

                    ),
                    TextSpan(
                        text: '-RNW',
                        style: TextStyle(
                          color: Colors.red,
                        )
                    )
                  ],
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
