import 'package:flutter/material.dart';
import '../Models/user.dart';
import '../Screens/chat_page.dart';

class CallsContactCard extends StatelessWidget {
  final User user;
  final int index;
  const CallsContactCard({required this.user, required this.index});

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
      child: ListTile(
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage(user.dpUrl + index.toString() + ".jpg"),
          ),
          title: Text(
            user.name,
          ),
          subtitle: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                user.about,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ]),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {},
                  color: Colors.teal,
                  icon: Icon(
                    Icons.phone,
                  )),
              IconButton(
                  onPressed: () {},
                  color: Colors.teal,
                  icon: Icon(
                    Icons.videocam,
                  )),
            ],
          )),
    );
  }
}
