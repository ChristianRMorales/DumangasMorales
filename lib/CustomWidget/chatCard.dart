import 'package:flutter/material.dart';
import '../Models/user.dart';
import '../Screens/chat_page.dart';

class ChatCard extends StatelessWidget {
  final User user;
  final int index;
  const ChatCard({required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      ChatPage(user: user, index: index)));
        },
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(user.dpUrl + index.toString() + ".jpg"),
              ),
              title: Text(
                user.name,
              ),
              subtitle: Row(children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(
                    user.lastMessage,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ]),
              trailing: Text(user.lastMessageTime),
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
  }
}
