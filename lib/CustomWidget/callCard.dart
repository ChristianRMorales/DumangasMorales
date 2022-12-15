import 'package:flutter/material.dart';
import '../Models/user.dart';

class CallCard extends StatelessWidget {
  final User user;
  final int index;
  const CallCard({required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                user.lastCallTime,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ]),
          trailing: Text(user.lastCallTime),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 80,
            right: 20,
          ),
          child: Divider(thickness: 1),
        ),
      ],
    );
  }
}
