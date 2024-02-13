import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green[600],
                child: Center(
                    child: Icon(
                  Icons.link,
                  color: Colors.black,
                )),
              ),
              title: Text(
                'Create call link',
                style: TextStyle(color: gettext()),
              ),
              subtitle: Text(
                'Share a link for your Whatsapp call',
                style: TextStyle(color: Colors.white24),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Recent',
                  style: TextStyle(color: gettext()),
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
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
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_made,
                        color: Colors.green[600],
                        size: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text('Today, 11.00 am',
                            style: TextStyle(color: Colors.white24)),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.call, color: Colors.green[600]),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
