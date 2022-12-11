import 'package:flutter/material.dart';
import '../Models/user.dart';

class ChatCard extends StatelessWidget {
  final User user;
  final int index;
  const ChatCard({required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(user.dpUrl + index.toString() + ".jpg"),
              ),
              title: Text(
                user.name,
                style: TextStyle(),
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
              trailing: Text(user.time),
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
