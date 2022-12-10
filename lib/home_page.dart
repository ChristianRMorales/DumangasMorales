import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBarView(
        children: <Widget>[
          Icon(Icons.search),
        ],
      ),
    );
  }
}
