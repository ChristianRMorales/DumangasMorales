import '../Models/user.dart';
import 'package:flutter/material.dart';
import '../CustomWidget/chatCard.dart';

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
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
          ),
          body: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return ChatCard(user: list[index], index: index);
              })),
    );
  }
}
