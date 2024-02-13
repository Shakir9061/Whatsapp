import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  Color gettext() {
    return Color(0xffECE5DD);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Text(
                  'Status',
                  style: TextStyle(color: gettext(), fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 360),
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: gettext(),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 10),
            child: ListTile(
              leading: CircleAvatar(
                child: Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Icon(
                          Icons.person,
                          size: 32,
                          color: Color.fromARGB(255, 255, 232, 232),
                        ),
                        CircleAvatar(
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: gettext(),
                              size: 12,
                            ),
                          ),
                          backgroundColor: Colors.green[600],
                          radius: 8,
                        )
                      ]),
                ),
                backgroundColor: Colors.grey[400],
              ),
              title: Text('My status', style: TextStyle(color: gettext())),
              subtitle: Text('Tap to add status update',
                  style: TextStyle(color: Colors.white24)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text('Recent updates', style: TextStyle(color: Colors.white24)),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Icon(
                        Icons.person,
                        size: 32,
                        color: Color.fromARGB(255, 255, 232, 232),
                      ),
                    ),
                    backgroundColor: Colors.grey[400],
                  ),
                  title: Text(
                    'User',
                    style: TextStyle(color: gettext()),
                  ),
                  subtitle: Text('30 minutes ago',
                      style: TextStyle(color: Colors.white24)),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
