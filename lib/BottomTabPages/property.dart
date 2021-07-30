import 'package:abaadee/Pages/filter_page.dart';
import 'package:abaadee/Pages/mainpage.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterPage()));
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "            Popular",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  "    Featured",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  "Recommended          ",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 10,
                color: Colors.black45,
              ),
            ),
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/abaadee logo white.png'))),
                    ),
                    Positioned(
                      left: 350,
                      top: 25,
                      child: CircleAvatar(
                        backgroundColor: Color(0xfffcb812),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 230,
                        left: 50,
                        child: Column(
                          children: [
                            Positioned(
                              child: Text(
                                "Hello salman gandu",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "Hello  gandu",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[700],
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/abaadee logo white.png')),
                      ),
                    ),
                    Positioned(
                      left: 350,
                      top: 25,
                      child: CircleAvatar(
                        backgroundColor: Color(0xfffcb812),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[700],
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/abaadee logo white.png')),
                      ),
                    ),
                    Positioned(
                      left: 350,
                      top: 25,
                      child: CircleAvatar(
                        backgroundColor: Color(0xfffcb812),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
