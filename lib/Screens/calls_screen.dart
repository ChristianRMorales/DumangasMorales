import '../user.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<User> list = [
    User("Marc", "Called", "9:00AM"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(list[index].dpUrl +
                                  index.toString() +
                                  ".jpg"),
                            ),
                            title: Text(
                              list[index].name,
                              style: TextStyle(),
                            ),
                            subtitle: Row(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text(
                                  list[index].lastMessage,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ]),
                            trailing: Text(list[index].time),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 80,
                              right: 20,
                            ),
                            child: Divider(thickness: 1),
                          ),
                        ],
                      ));
                })));
  }
}
