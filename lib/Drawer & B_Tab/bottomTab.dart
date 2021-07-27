import 'package:abaadee/Drawer%20&%20B_Tab/navigation_drawer.dart';
import 'package:abaadee/BottomTabPages/account_page.dart';
import 'package:abaadee/BottomTabPages/fav_page.dart';
import 'package:abaadee/BottomTabPages/messages.dart';
import 'package:abaadee/BottomTabPages/settings.dart';
import 'package:abaadee/Pages/property.dart';
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
      backgroundColor: Colors.white,
      drawer: NavigationDrawer(),
      body: buildPages(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  buildBottomNavigation() {
    final inactiveColor = Colors.white;
    return BottomNavyBar(
      backgroundColor: Colors.black,
      selectedIndex: index,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: Color(0xfffcb812),
            ),
            title: Text("Search", style: TextStyle(color: Color(0xfffcb812))),
            activeColor: Color(0xfffcb812),
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Color(0xfffcb812),
            ),
            activeColor: Color(0xfffcb812),
            inactiveColor: inactiveColor,
            title: Text(
              "Favorite",
              style: TextStyle(color: Color(0xfffcb812)),
            ),
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Color(0xfffcb812),
            ),
            title: Text("Account", style: TextStyle(color: Color(0xfffcb812))),
            activeColor: Color(0xfffcb812),
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.message,
              color: Color(0xfffcb812),
            ),
            title: Text("Message", style: TextStyle(color: Color(0xfffcb812))),
            activeColor: Color(0xfffcb812),
            inactiveColor: inactiveColor,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
            icon: Icon(
              Icons.settings,
              color: Color(0xfffcb812),
            ),
            title: Text("Setting", style: TextStyle(color: Color(0xfffcb812))),
            activeColor: Color(0xfffcb812),
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
