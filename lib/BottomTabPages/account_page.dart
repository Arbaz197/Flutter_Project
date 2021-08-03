import 'package:abaadee/Drawer%20&%20B_Tab/bottomTab.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Widget cusSearchBar = Image.asset(
    "assets/images/abaadee-logo-black.png",
    fit: BoxFit.fill,
    height: 60,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: cusSearchBar,
        ),
        //centerTitle: true,
        backgroundColor: Color(0xfffcb812),
        //automaticallyImplyLeading: false,
      ),
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
                  "HELLO!",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  " Settings Page",
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
      bottomNavigationBar: BottomTab(),
    );
  }
}
