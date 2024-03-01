import 'package:flutter/material.dart';
import 'package:untitled/clock_app/screen2.dart';

import 'clock_app.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CLOCK APP",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => clock_app(),
        '/stop': (context) =>  stopwacth(),

      },

    );
  }
}
