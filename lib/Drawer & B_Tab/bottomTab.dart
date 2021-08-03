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
  int _selectedPage = 0;

  final inactiveColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
        backgroundColor: Color(0xfffcb812),
        selectedIndex: _selectedPage,
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
        onItemSelected: (index) {
          setState(() {
            _selectedPage = index;
          });
        });
  }
}

//   buildBottomNavigation() {
//     final inactiveColor = Colors.white;
//     return BottomNavyBar(
//       backgroundColor: Color(0xfffcb812),
//       selectedIndex: index,
//       items: <BottomNavyBarItem>[
//         BottomNavyBarItem(
//             icon: Icon(
//               Icons.home,
//               color: Colors.white,
//             ),
//             title: Text("Home", style: TextStyle(color: Colors.white)),
//             activeColor: Colors.white,
//             inactiveColor: inactiveColor,
//             textAlign: TextAlign.center),
//         BottomNavyBarItem(
//             icon: Icon(
//               Icons.favorite_border,
//               color: Colors.white,
//             ),
//             activeColor: Colors.white,
//             inactiveColor: inactiveColor,
//             title: Text(
//               "Favorite",
//               style: TextStyle(color: Colors.white),
//             ),
//             textAlign: TextAlign.center),
//         BottomNavyBarItem(
//             icon: Icon(
//               Icons.add_circle_outline_rounded,
//               color: Colors.white,
//             ),
//             title: Text("Add Property", style: TextStyle(color: Colors.white)),
//             activeColor: Colors.white,
//             inactiveColor: inactiveColor,
//             textAlign: TextAlign.center),
//         BottomNavyBarItem(
//             icon: Icon(
//               Icons.message,
//               color: Colors.white,
//             ),
//             title: Text("Message", style: TextStyle(color: Colors.white)),
//             activeColor: Colors.white,
//             inactiveColor: inactiveColor,
//             textAlign: TextAlign.center),
//         BottomNavyBarItem(
//             icon: Icon(
//               Icons.settings,
//               color: Colors.white,
//             ),
//             title: Text("Setting", style: TextStyle(color: Colors.white)),
//             activeColor: Colors.white,
//             inactiveColor: inactiveColor,
//             textAlign: TextAlign.center),
//       ],
//       onItemSelected: (index) => setState(() => this.index = index),
//     );
//   }

  
// }
