import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login_page/view/login_2.dart';
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
              Stack(
                children: [
                  Image.asset('assest/login_page_assest/img_2.png',),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assest/login_page_assest/img_3.png',height: 200,),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 150,),
                      Image.asset('assest/login_page_assest/img.png',height: 400,width: 400,),
                    ],
                  )
                ],
              ),
             SizedBox(height: 50,),
             Text("Explore the app",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              Image.asset('assest/login_page_assest/img_1.png',width: 350,),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login_2(),));
                },
                child: Container(
                  height: 48,
                  width: 328,
                  decoration: BoxDecoration(color: Color(0XFFFFC600),borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Text("Lets Start",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                ),
              )

            ],
          ),
    );
  }
}

