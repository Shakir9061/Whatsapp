import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  Color gettext() {
    return Color(0xffECE5DD);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ListTile(
                  textColor: gettext(),
                  title: Text("user"),
                  subtitle: Text('sdsdd'),
                  trailing: Column(
                    children: [
                      Text("12/12/2020"),
                      Container(
                        child: CircleAvatar(
                          child: Center(
                              child: Text(
                            '2',
                            style: TextStyle(fontSize: 15),
                          )),
                          backgroundColor: Colors.green,
                        ),
                        height: 20,
                        width: 20,
                      )
                    ],
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue[100],
                      backgroundImage: AssetImage('images/new.png'))),
            );
          }),
    );
  }
}
