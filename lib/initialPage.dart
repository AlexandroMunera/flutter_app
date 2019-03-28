import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/login.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 110.0, 0.0, 0.0),
                    child: Text('Welcome to Gdcoin your',
                        style: TextStyle(
                            fontSize: 30.0,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy-Bold')),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40.0, 140.0, 0.0, 0.0),
                    child: Text('smart crypto exchange',
                        style: TextStyle(
                            fontSize: 30.0,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy-Bold')),
                  ),
                ],
              ),
            ),
            Container(
                width: 400.0,
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/initialPageImage.png")),
                )),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Color(0xFFF29C1F),
                        color: Color(0xFFF29C1F),
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                stops: [0.1, 0.5, 0.7, 0.9],
                                colors: [
                                  Color(0xFFE5C900),
                                  Color(0xFFE8BB09),
                                  Color(0xFFEEA915),
                                  Color(0xFFF29C1F),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy-Bold',
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: Container(
                        height: 50.0,
                        color: Colors.transparent,
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Center(
                              child: Text('Login',
                                  style: TextStyle(
                                      fontFamily: 'Gilroy-Bold',
                                      fontSize: 18)),
                            )),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    ),
                  ],
                )),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                'Read terms and privacy policy',
                style: TextStyle(
                    fontFamily: 'Gilroy-Medium', color: Color(0xFF888888)),
              ),
            )
          ],
        ));
  }
}
