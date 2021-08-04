import 'package:abaadee/Drawer%20&%20B_Tab/bottomTab.dart';
import 'package:abaadee/Drawer%20&%20B_Tab/navigation_drawer.dart';
import 'package:abaadee/Pages/add_property.dart';

import 'package:abaadee/Pages/filter_page.dart';
import 'package:abaadee/Pages/property_detail.dart';

import 'package:flutter/material.dart';

class Property extends StatefulWidget {
  @override
  _PropertyState createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  // ignore: non_constant_identifier_names
  Container MyArticle(String imageurl, String heading) {
    return Container(
      height: 140,
      width: 200,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageurl),
            ListTile(
              title: Center(
                  child: Text(
                heading,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )),
            ),
          ],
        ),
      ),
    );
  }

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
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search Property...',
                suffixIcon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FilterPage()));
                  },
                  icon: Icon(
                    Icons.filter_list_sharp,
                    color: Color(0xfffcb812),
                    size: 35,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ignore: deprecated_member_use
              RaisedButton.icon(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'BUY',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.home_sharp,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                color: Color(0xfffcb812),
              ),
              // ignore: deprecated_member_use
              RaisedButton.icon(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'RENT',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.vpn_key_rounded,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                color: Color(0xfffcb812),
              ),
              // ignore: deprecated_member_use
              RaisedButton.icon(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                label: Text(
                  'INVEST',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.attach_money_sharp,
                  color: Colors.white,
                ),
                //textColor: Colors.white,
                color: Color(0xfffcb812),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  "Featured",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  "Recommended          ",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 10,
              color: Colors.black45,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Property_Card(),
                  Property_Card(),
                  Property_Card(),
                  Property_Card(),
                  Property_Card(),
                  Property_Card(),
                  Property_Card(),
                  Property_Card(),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Add_Property()));
          },
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                shape: BoxShape.circle,
                color: Color(0xfffcb812)),
            child: Icon(Icons.add, size: 30),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomTab(),

      //bottomNavigationBar: BottomTab(),
    );
  }
}

// ignore: camel_case_types
class Property_Card extends StatelessWidget {
  const Property_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PropertyDetail()));
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[700],
                image: DecorationImage(
                    image: AssetImage('assets/images/abaadee logo white.png'))),
          ),
          Positioned(
            left: 280,
            top: 30,
            child: CircleAvatar(
              backgroundColor: Color(0xfffcb812),
              child: Icon(
                Icons.favorite_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
