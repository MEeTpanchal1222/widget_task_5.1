import 'package:flutter/material.dart';
class login_1 extends StatelessWidget {
  const login_1({super.key});

  @override
  Widget build(BuildContext context) {
    return login_1ful();
  }
}
class login_1ful extends StatefulWidget {
  const login_1ful({super.key});

  @override
  State<login_1ful> createState() => _login_1fulState();
}

class _login_1fulState extends State<login_1ful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Image.asset('assest/login_page_assest/img_2.png'),
            ],
          ),
    );
  }
}

