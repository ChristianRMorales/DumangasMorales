import 'package:flutter/material.dart';
import '../data/data.dart';
import '../CustomWidget/callContactCard.dart';

class CallsContactsPage extends StatefulWidget {
  @override
  _CallContactsPageState createState() => _CallContactsPageState();
}

class _CallContactsPageState extends State<CallsContactsPage> {
  @override
  Widget build(BuildContext context) {
    return (SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Contact",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              contactList.length.toString() + " Contacts",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 26)),
          PopupMenuButton(
            onSelected: ((value) {
              print(value);
            }),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Invite a friend"),
                  value: "Invite a friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.link),
                  ),
                  title: Text("New call link"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.group),
                  ),
                  title: Text("New group call"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person_add),
                  ),
                  title: Text("New contact"),
                  trailing: Icon(Icons.qr_code),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: contactList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CallsContactCard(
                      user: contactList[index], index: index);
                }),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xFFEBECEE),
                    child: Icon(Icons.share, color: const Color(0xFF8496A0)),
                  ),
                  title: Text("Share invite link"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xFFEBECEE),
                  child:
                      Icon(Icons.help_outline, color: const Color(0xFF8496A0)),
                ),
                title: Text("Contacts help"),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}