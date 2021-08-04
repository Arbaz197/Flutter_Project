import 'package:flutter/material.dart';

// ignore: camel_case_types
class Add_Property extends StatefulWidget {
  const Add_Property({Key? key}) : super(key: key);

  @override
  _Add_PropertyState createState() => _Add_PropertyState();
}

// ignore: camel_case_types
class _Add_PropertyState extends State<Add_Property> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 40,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset("assets/images/abaadee.png"),
                  height: 70,
                ),
                Text(
                  "Add!",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Property",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
