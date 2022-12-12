import 'package:flutter/material.dart';
import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Enter Your Mobile Phone Number",
          style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.w700,
              wordSpacing: 1,
              fontSize: 17),
        ),
        actions: [Icon(Icons.more_vert, color: Color(0xff000000))],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text("Verify your Number",
                style: TextStyle(
                  fontSize: 13.5,
                )),
            SizedBox(
              height: 5,
            ),
            Text("What's my number",
                style: TextStyle(fontSize: 12.5, color: Colors.cyan[800])),
            SizedBox(
              height: 15,
            ),
            countryCard()
          ],
        ),
      ),
    );
  }

  Widget countryCard() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => Home()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        padding: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.teal,
              width: 1.8,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "63+ Philippines",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.teal,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
