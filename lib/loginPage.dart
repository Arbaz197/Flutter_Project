import 'package:abaadee/homepage.dart';
import 'package:abaadee/pages.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(1, 1),
          child: Container(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pages()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: Text(
                  "Sign in / Register to sycn your \nfavorites and searches across  your devices.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Sign in / Register",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    inputfile(label: "Email"),
                    SizedBox(
                      height: 10,
                    )
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // inputfile(label: "Password", obscuretext: true)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  color: Color(0xfffcb812),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(width: 0.8)),
                  child: Text("Continue",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: <Widget>[
              //         Text("Don't have an account?  "),
              //         GestureDetector(
              //             onTap: () {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => Signup()));
              //             },
              //             child: Text(
              //               "Signup",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w600,
              //                 fontSize: 18,
              //                 color: Colors.blueAccent,
              //               ),
              //             ))
              //       ]),
              // ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Divider(
                  height: 3,
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {},
                  color: Color(0xff3b5998),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(width: 0.8)),
                  child: Row(
                    children: [
                      Text(
                        "Login with facebook",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {},
                  color: Color(0xff4285F4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(width: 0.8)),
                  child: Row(
                    children: [
                      Text(
                        "Login with Google",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {},
                  color: Color(0xffA2AAAD),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(width: 0.8)),
                  child: Row(
                    children: [
                      Text(
                        "Login with Apple",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputfile({label, obscuretext = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Colors.black87,
        ),
      ),
      SizedBox(height: 12),
      TextField(
        obscureText: obscuretext,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
            )),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      )
    ],
  );
}
