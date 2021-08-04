import 'package:abaadee/Drawer%20&%20B_Tab/bottomTab.dart';
import 'package:abaadee/Drawer%20&%20B_Tab/navigation_drawer.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Projects"),
        backgroundColor: Color(0xfffcb812),
      ),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 5, right: 5),
          child: Column(children: <Widget>[
            ProjectList(),
            ProjectList(),
            ProjectList(),
            ProjectList(),
            ProjectList(),
            ProjectList(),
            ProjectList(),
            ProjectList(),
            ProjectList(),
            ProjectList(),
          ]),
        ),
      ),
      bottomNavigationBar: BottomTab(),
    );
  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
            margin: EdgeInsets.only(top: 15, left: 10),
            height: 125,
            width: 150,
            color: Colors.green,
            child: Image(
              image: AssetImage("assets/images/Ise_building2.png"),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 165),
            height: 125,
            width: 180,
            //color: Colors.green,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Zee Avenue                             ",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Icon(
                    Icons.whatshot_sharp,
                    color: Colors.red,
                    size: 15,
                  ),
                  Icon(
                    Icons.verified_sharp,
                    color: Colors.green,
                    size: 15,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Zee Avenue, Lahore",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: ' PKR  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                      ),
                      children: [
                        TextSpan(
                          text: '25.58 Lakh to 2.3 Crore',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          border: Border.all(color: Color(0xfffcb812)),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: Color(0xfffcb812),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0.0),
                            bottomLeft: Radius.circular(0.0),
                          ),
                          border: Border.all(color: Color(0xfffcb812)),
                          color: Color(0xfffcb812)),
                      child: Center(
                        child: Text(
                          "Call",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          border: Border.all(color: Color(0xfffcb812)),
                          color: Colors.white),
                      child: Center(
                          child: Icon(
                        Icons.call,
                        color: Colors.green,
                      )),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
