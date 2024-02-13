
import 'package:flutter/material.dart';
import 'package:login/Calls.dart';
import 'package:login/Community.dart';
import 'package:login/chat.dart';
import 'package:login/updates.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  Color getColor() {
    return Color(0xff075E54);
  }

  Color gettext() {
    return Color(0xffECE5DD);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: getColor(),
            title: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 50),
              child: Text('WhatsApp',
                  style: TextStyle(fontSize: 20, color: gettext())),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, bottom: 50),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: gettext(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, bottom: 50),
                child: Icon(Icons.search, color: gettext()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, bottom: 50),
                child: Icon(Icons.more_vert_outlined, color: gettext()),
              )
            ],
            bottom:
                TabBar(indicatorColor: gettext(), indicatorWeight: 1, tabs: [
              Icon(Icons.groups_rounded, color: gettext()),
              Text(
                'Chats',
                style: TextStyle(color: gettext()),
              ),
              Text(
                'Updates',
                style: TextStyle(color: gettext()),
              ),
              Text(
                'Calls',
                style: TextStyle(color: gettext()),
              ),
            ]),
          ),
          body:
              TabBarView(children: [Community(), Chats(), Update(), Calls()])),
    );
  }
}
