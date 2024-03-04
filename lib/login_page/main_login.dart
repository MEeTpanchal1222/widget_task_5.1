import 'package:flutter/material.dart';
import 'package:untitled/login_page/view/login_1.dart';
import 'package:untitled/login_page/view/login_2.dart';
void main() {

  runApp(const login_main());
}
class login_main extends StatelessWidget {
  const login_main({super.key});

  @override
  Widget build(BuildContext context) {
    return main_login();
  }
}
class main_login extends StatefulWidget {
  const main_login({super.key});

  @override
  State<main_login> createState() => _main_loginState();
}

class _main_loginState extends State<main_login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => login_1(),
        '/login' : (context) => login_2(),
      },
    );
  }
}
