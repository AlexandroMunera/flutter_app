import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/initialPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: new ThemeData(
//        primaryColor: Color(0xFF888888),
//        backgroundColor: Color(0xFF888888),
//        color
//      ),
      home: InitialPage(),
    );
  }
}



