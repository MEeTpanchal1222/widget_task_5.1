import 'package:flutter/material.dart';

void main() {
  runApp(const Gmail());
}

class Gmail extends StatefulWidget {
  const Gmail({Key? key}) : super(key: key);

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: 350,
          backgroundColor: const Color(0xFF2E2F33),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(27, 20, 0, 8),
                  child: const Row(
                    children: [
                      Text(
                        "G",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 35),
                      ),
                      Text(
                        "mail",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                            fontSize: 28),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.all_inbox,
                      color: Colors.white,
                      size: 29,
                    ),

                    title: Text(
                      'All Inboxes',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: 310,
                  decoration: const BoxDecoration(
                      color: Color(0xFF5A4645),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.inbox,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Inbox',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.star_half,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Starred',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.snooze,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Snoozed',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.label_important_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Important',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.send_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Sent',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.note,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Drafts',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.mail_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'All Mail',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.report,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Spam',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Trash',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                const Divider(
                  color: Colors.grey,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Create new',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),

                const Divider(
                  color: Colors.grey,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 25,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
        backgroundColor: const Color(0xFF121315),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF0D0D0F),
          title: const Text(
            'Gmail',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(),
      ),
    )
    );
  }
}