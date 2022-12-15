import '../Models/user.dart';
import 'package:flutter/material.dart';
import '../CustomWidget/callCard.dart';
import '../data/data.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
                itemCount: callList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CallCard(user: callList[index], index: index);
                })));
  }
}
