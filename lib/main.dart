import 'home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          backgroundColor: Colors.white,
          textTheme: const TextTheme(
              subtitle1: TextStyle(fontWeight: FontWeight.bold)),
          primaryTextTheme: TextTheme(
            subtitle1: TextStyle(fontWeight: FontWeight.bold),
          ),
          primaryIconTheme: IconThemeData(color: Colors.white)),
      home: Home(),
    );
  }
}
