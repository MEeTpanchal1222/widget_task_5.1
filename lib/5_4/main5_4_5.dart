import 'package:flutter/material.dart';
import 'package:untitled/5_4/4_5_list.dart';

void main() {
  runApp(const app());
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff244D61),
            centerTitle: true,
            title: const Text(
              'Dynamic List',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            elevation: 5,
            shadowColor: Colors.grey,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                  children: List.generate(
                      dynamiclist.length, (index) => list(index + 1))),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    count++;
                    dynamiclist.add(count);
                  });
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    dynamiclist.remove(count);
                    count--;
                  });
                },
                child: const Text(
                  '-',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int count = 1;

Widget list(int? number) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    height: 100,
    width: 350,
    decoration: BoxDecoration(
      color: (number! % 2 == 0) ? const Color(0xff5689C0) : const Color(0xff75E2FF),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
        child: Text(
          '$number',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        )),
  );
}