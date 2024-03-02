import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ProfileSlide());
}

class ProfileSlide extends StatefulWidget {
  const ProfileSlide({super.key});

  @override
  State<ProfileSlide> createState() => _ProfileSlideState();
}

class _ProfileSlideState extends State<ProfileSlide> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: "my drawer",
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF121315),
          drawer: Drawer(
            backgroundColor: Colors.black38,
            width: 300,
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffdba2fa0),
                        Color(0xff5e5596ff),
                      ],
                    ),
                  ),
                  child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                backgroundImage: AssetImage(
                                  'assest/my.jpg',
                                ),

                                radius: 43,
                                // You can add an image or initials as well
                              ),
                              Text(
                                'MeetR Panchal',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'panchalmeetr97@gmail.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const ListTile(
                    title: Text(
                      'Notification',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const ListTile(
                    title: Text(
                      'Review',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.reviews,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: const ListTile(
                    title: Text(
                      'Payment',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.payment_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  color: const Color(0xff5e5596ff0),
                  child: const ListTile(
                    title: Text(
                      'Setting',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: const Color(0xffdba2fa0),
            // Make the app bar transparent
            title: const Text(
              'My profile',
              style: TextStyle(color: Colors.white),
            ),
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: const Center(

          ),
        ),
      ),
    );
  }
}