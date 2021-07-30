import 'package:abaadee/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
          Widget>[
        Padding(
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
                "HELLO!",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                "Welcome To Abaadee",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  color: Color(0xfffcb812),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Continue",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
