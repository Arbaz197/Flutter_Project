import 'package:abaadee/Drawer%20&%20B_Tab/bottomTab.dart';
import 'package:abaadee/Drawer%20&%20B_Tab/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  // bool _loading = false;
  Icon cusIcon = Icon(
    Icons.search,
    color: Colors.black,
  );
  Widget cusSearchBar = Image.asset(
    "assets/images/abaadee-logo-black.png",
    fit: BoxFit.fill,
    height: 60,
  );
  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   _loading = true;
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   color: Colors.black,
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => NavigationDrawer()));
        //   },
        // ),
        actions: <Widget>[
          IconButton(
              icon: cusIcon,
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(
                      Icons.cancel,
                      color: Colors.black,
                    );
                    this.cusSearchBar = TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        hintText: "Search",
                      ),
                    );
                  } else {
                    this.cusIcon = Icon(
                      Icons.search,
                      color: Colors.black,
                    );
                    this.cusSearchBar = Image.asset(
                      "assets/images/abaadee-logo-black.png",
                      fit: BoxFit.fill,
                      height: 60,
                    );
                  }
                });
              }),
        ],
        title: cusSearchBar,
        centerTitle: true,
        backgroundColor: Color(0xfffcb812),
        automaticallyImplyLeading: false,
      ),
      drawer: NavigationDrawer(),
      body: BottomTab(),
    );
  }
}
