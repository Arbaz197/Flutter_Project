// ignore: unused_import
//import 'package:abaadee/homepage.dart';
import 'package:abaadee/BottomTabPages/account_page.dart';
import 'package:abaadee/BottomTabPages/fav_page.dart';
import 'package:abaadee/loginPage.dart';
import 'package:abaadee/pages.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xfffcb812),
        child: ListView(
          padding: padding,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/images/abaadee-logo-black.png"),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.black87))),
            ),
            SizedBox(height: 10),
            buildMenuItem(
              text: "Add Property",
              icon: Icons.add_box_rounded,
              OnClicked: () => selectedItem(context, 0),
            ),
            SizedBox(height: 13),
            buildMenuItem(
              text: "Favorite",
              icon: Icons.favorite_border_outlined,
              OnClicked: () => selectedItem(context, 1),
            ),
            SizedBox(height: 13),
            buildMenuItem(
              text: "Message",
              icon: Icons.message,
              OnClicked: () => selectedItem(context, 2),
            ),
            SizedBox(height: 13),
            buildMenuItem(
              text: "Account",
              icon: Icons.account_circle_rounded,
              OnClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(
              height: 3,
            ),
            Divider(
              color: Colors.black87,
            ),
            const SizedBox(
              height: 3,
            ),
            SizedBox(height: 13),
            buildMenuItem(
              text: "Setting",
              icon: Icons.settings_applications,
              OnClicked: () => selectedItem(context, 4),
            ),
            SizedBox(height: 13),
            buildMenuItem(
                text: "Log Out",
                icon: Icons.logout,
                OnClicked: () => selectedItem(context, 5)),
          ],
        ),

        //  ],
      ),
      //),
    );
  }

  Widget buildMenuItem(
      // ignore: non_constant_identifier_names
      {required String text,
      required IconData icon,
      // ignore: non_constant_identifier_names
      VoidCallback? OnClicked}) {
    final color = Colors.black87;
    final hovercolor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
          style: TextStyle(color: color, fontWeight: FontWeight.w900)),
      hoverColor: hovercolor,
      onTap: OnClicked,
    );
  }

  selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Pages()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FavPage()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Pages()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Account()));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Pages()));
        break;
      case 5:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginPage()));
        break;
    }
  }
}
