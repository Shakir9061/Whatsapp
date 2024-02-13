import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  Color gettext() {
    return Color(0xffECE5DD);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 5, top: 15),
        child: ListTile(
          tileColor: Colors.black38,
          leading: Stack(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Icon(
                Icons.groups_rounded,
                color: const Color.fromARGB(255, 255, 232, 232),
              )),
            ),
            CircleAvatar(
              child: Center(
                child: Icon(
                  Icons.add,
                  color: gettext(),
                  size: 15,
                ),
              ),
              backgroundColor: Colors.green[600],
              radius: 10,
            )
          ], alignment: AlignmentDirectional.bottomEnd),
          title: Text(
            'New community',
            style: TextStyle(color: gettext()),
          ),
        ),
      ),
    );
  }
}
