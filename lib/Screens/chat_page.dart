import 'package:flutter/material.dart';
import '../Models/user.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

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
        backgroundColor: Colors.blueGrey,
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
            PopupMenuButton(
              onSelected: ((value) {
                print(value);
              }),
              itemBuilder: (BuildContext context) {
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
              },
            ),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              ListView(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width - 55,
                        child: Card(
                            margin:
                                EdgeInsets.only(left: 2, right: 2, bottom: 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Message",
                                contentPadding: EdgeInsets.all(10),
                                prefixIcon: IconButton(
                                  icon: Icon(Icons.emoji_emotions),
                                  onPressed: () {},
                                ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.attach_file),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.camera_alt),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      child: CircleAvatar(
                          radius: 25,
                          child: IconButton(
                            icon: Icon(Icons.mic),
                            onPressed: () {},
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
