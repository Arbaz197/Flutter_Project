import 'package:abaadee/Drawer%20&%20B_Tab/navigation_drawer.dart';
import 'package:abaadee/BottomTabPages/account_page.dart';
import 'package:abaadee/BottomTabPages/fav_page.dart';
import 'package:abaadee/BottomTabPages/messages.dart';
import 'package:abaadee/BottomTabPages/settings.dart';
import 'package:abaadee/BottomTabPages/property.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: NavigationDrawer(),
      body: buildPages(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  buildBottomNavigation() {
    final inactiveColor = Colors.white;
    return BottomNavyBar(
      backgroundColor: Color(0xfffcb812),
      selectedIndex: index,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text("Home", style: TextStyle(color: Colors.white)),
            activeColor: Colors.white,
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            activeColor: Colors.white,
            inactiveColor: inactiveColor,
            title: Text(
              "Favorite",
              style: TextStyle(color: Colors.white),
            ),
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
            title: Text("Account", style: TextStyle(color: Colors.white)),
            activeColor: Colors.white,
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: Text("Message", style: TextStyle(color: Colors.white)),
            activeColor: Colors.white,
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text("Setting", style: TextStyle(color: Colors.white)),
            activeColor: Colors.white,
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center),
      ],
      onItemSelected: (index) => setState(() => this.index = index),
    );
  }

  buildPages() {
    switch (index) {
      case 0:
        return Property();
      case 1:
        return FavPage();
      case 2:
        return Account();
      case 3:
        return Messages();
      case 4:
        return Settings();
    }
  }
}
