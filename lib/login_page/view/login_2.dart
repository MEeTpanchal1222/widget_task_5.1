import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/login_page/view/login_1.dart';
class login_2 extends StatelessWidget {
  const login_2({super.key});

  @override
  Widget build(BuildContext context) {
    return login_2ful();
  }
}
class login_2ful extends StatefulWidget {
  const login_2ful({super.key});

  @override
  State<login_2ful> createState() => _login_2fulState();
}
TextEditingController txtemail = TextEditingController();
TextEditingController txtpassword = TextEditingController();


class _login_2fulState extends State<login_2ful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assest/login_page_assest/img_2.png',),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assest/login_page_assest/img_3.png',height: 190,),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 80,),
                        Row(
                          children: [
                            SizedBox(width: 30,),
                            Text('Login Account',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10,),
                            Icon(Icons.account_circle,size: 30,),
                            SizedBox(width: 100,),
                            Image.asset('assest/login_page_assest/img_4.png',width: 30,height: 30,),
                            SizedBox(width: 3,),
                            Icon(CupertinoIcons.arrowtriangle_down_fill,size: 11,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Wellcome back MeetR panchal !"),
                            SizedBox(width: 110,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 165,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Mini ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 67),),
                          Text('Shop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 67,color: Color(0XFFFFC600)),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding:   EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                maxLength: 62,
                controller: txtemail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1,color: Colors.black,),
                  ),
                  prefixIcon: Icon(Icons.perm_identity_outlined),
                  label: Text("EMAIL ID"),
                  hintText: 'panchal@gmail.com',
                     focusedBorder:OutlineInputBorder( // Specify focused border here
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       borderSide: BorderSide(width: 2, color: Color(0XFFFFC600)), // Customize focused border color and width
                     ),
                ),
              ),
            ),
            // SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                maxLength: 32,
                controller: txtpassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1,color: Colors.black,),
                    ),
                  prefixIcon: Icon(Icons.lock_rounded),
                  label: Text("PASSWORD"),
                  hintText: '123@4356#',
                  focusedBorder:OutlineInputBorder( // Specify focused border here
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2, color: Color(0XFFFFC600)), // Customize focused border color and width
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 26, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forget Password ?',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => login_1(),));
              },
              child: Container(
                height: 48,
                width: 328,
                decoration: BoxDecoration(color: Color(0XFFFFC600),borderRadius: BorderRadius.circular(8)),
                child: Center(child: Text("Login",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('-----------------------',style: TextStyle(letterSpacing: -1),),
                  Text('Or sign up with'),
                  Text('-----------------------',style: TextStyle(letterSpacing: -1),),
                ],
              )
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black,blurStyle: BlurStyle.outer,blurRadius: 10,spreadRadius:20 )
                    ]
                  ),
                  child: Image.asset('assest/login_page_assest/img_5.png'),
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(color: Colors.black,blurStyle: BlurStyle.outer,blurRadius: 10,spreadRadius:20 )
                      ]
                  ),
                  child: Image.asset('assest/login_page_assest/img_6.png'),
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(color: Colors.black,blurStyle: BlurStyle.outer,blurRadius: 10,spreadRadius:20 )
                      ]
                  ),
                  child: Image.asset('assest/login_page_assest/img_7.png'),
                ),
              ],
            )

          ],
        ),
      ),

    );
  }
}


