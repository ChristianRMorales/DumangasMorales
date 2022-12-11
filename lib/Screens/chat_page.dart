import 'package:flutter/material.dart';
import '../Models/user.dart';

class ChatPage extends StatefulWidget {
  final User user;
  final int index;

  const ChatPage({required this.user, required this.index});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          titleSpacing: 5,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    widget.user.dpUrl + widget.index.toString() + ".jpg"),
              ),
            ],
          ),
          title: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.user.name,
                ),
                Text(
                  (widget.index % 2 == 1)
                      ? "Online"
                      : "Last seen " + widget.user.time,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            PopupMenuButton(onSelected: ((value) {
              print(value);
            }), itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Add to contacts"),
                  value: "Add to contacts",
                ),
                PopupMenuItem(
                  child: Text("Media, links and docs"),
                  value: "Media, links and docs",
                ),
                PopupMenuItem(
                  child: Text("Search"),
                  value: "Search",
                ),
                PopupMenuItem(
                  child: Text("Disappearing messages"),
                  value: "Disappearing messages",
                ),
                PopupMenuItem(
                  child: Text("Wallpaper"),
                  value: "Wallpaper",
                ),
                PopupMenuItem(
                  child: Text("More                              ▶"),
                  value: "More",
                ),
              ];
            }),
          ],
        ),
      ),
    );
  }
}
