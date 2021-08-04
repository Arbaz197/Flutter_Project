//import 'package:carousel_pro/carousel_pro.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({Key? key}) : super(key: key);

  @override
  _DetailpageState createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
            height: 150.0,
            width: double.infinity,
            child: Carousel(
              images: [
                Image.asset('assets/images/abaadee logo white.png'),
                Image.asset('assets/images/abaadee logo white.png'),
                Image.asset("assets/images/abaadee logo white.png")
              ],
            ))
      ],
    );
  }
}
