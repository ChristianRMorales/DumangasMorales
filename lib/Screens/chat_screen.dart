import '../Models/user.dart';
import 'package:flutter/material.dart';
import '../CustomWidget/chatCard.dart';
import 'contacts_page.dart';
import '../data/data.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ContactsPage()));
            },
            child: Icon(Icons.chat),
          ),
          body: ListView.builder(
              itemCount: contactList.length,
              itemBuilder: (BuildContext context, int index) {
                return ChatCard(user: contactList[index], index: index);
              })),
    );
  }
}
