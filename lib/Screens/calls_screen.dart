import '../Models/user.dart';
import 'package:flutter/material.dart';
import '../CustomWidget/callCard.dart';

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
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.add_ic_call,
              ),
            ),
            body: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return CallCard(user: list[index], index: index);
                })));
  }
}
