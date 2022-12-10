import 'User.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<User> list = [
    User("Eric Y. Ligo", "Humana ka mob boss?", "12:20AM"),
    User("Jordi", "Tomorrow Online Class", "11:10PM"),
    User("Wife <3", "shopee delivery", "01:10PM"),
    User("Mark palainom", "Happy Bday brad way pulutan diha", "12/2/2022"),
    User("CEO frontrow", "I need it asap", "12/01/2022"),
    User(
        "Opaw O. Sinaw",
        "https://gitlab.com/codingboot-youtube/whatsapp-ui/-/blob/master/lib/main.dart",
        "12/01/2022"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(list[index].dpUrl + index.toString() + ".jpg"),
            ),
            title: Text(
              list[index].name,
              style: TextStyle(),
            ),
            subtitle: Text(list[index].lastMessage),
            trailing: Text(list[index].time),
          );
        });
  }
}

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
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(list[index].dpUrl + index.toString() + ".jpg"),
            ),
            title: Text(
              list[index].name,
              style: TextStyle(),
            ),
            subtitle: Text(list[index].lastMessage),
            trailing: Text(list[index].time),
          );
        });
  }
}
