import 'package:flutter/material.dart';

void main()
{
  runApp(const Calulator());
}

class Calulator extends StatefulWidget {
  const Calulator({super.key});

  @override
  State<Calulator> createState() => _CalState();
}

class _CalState extends State<Calulator> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: const Text('Calulator',style: TextStyle(
              color: Colors.white,
            ),),
            backgroundColor: const Color(0xFF54759E),

            centerTitle: true,

          ),

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("$count",style: const TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 100,
                  ),),],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          count-=2;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        height: 60,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xFF54759E),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text('- 2',style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 0,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count +=2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        height: 60,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xFF54759E),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text('+ 2',style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          count-=4;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                        height: 60,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xFF54759E),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text('- 4',style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count+=4;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        height: 60,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xFF54759E),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text('+ 4',style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          count = 0;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 39,vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 130,vertical: 20),
                        height: 60,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xFF54759E),
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: const Text('Clear',style: TextStyle(
                          color: Colors.white,
                          fontSize: 30  ,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )

    );
  }
}

int count = 0;