import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/dashboard.dart';
import 'package:flutter_app/helper.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              //margin: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0),
                margin: const EdgeInsets.only(left: 110.0, top: 100.0),
                width: 180.0,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo2.png")),
                )),
            Container(
              child: Center(
                child: Text('Gdcoin',
                    style: TextStyle(
                        fontSize: 30.0,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy-Bold')),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFF29C1F),
                        )),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          CustomIcons.keyPass,
                          color: Color(0xFFF29C1F),
                        )),
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        checkColor: Color(0xFFF29C1F),
                        activeColor: Color(0xFFF29C1F),
                        value: false,
                        onChanged: (bool value) {
                          setState(() {});
                        },
                      ),
                      Text("Keep me logged in.")
                    ],
                  )
                ],
              ),
            ),
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard()));
                          },
                          child:
                          Container(
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
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy-Bold',
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                )),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                'Forgot Password? \n',
                style: TextStyle(
                    fontFamily: 'Gilroy-Medium', color: Color(0xFF888888),
                    fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                'Dont have an account yet? Register',
                style: TextStyle(
                    fontFamily: 'Gilroy-Medium', color: Color(0xFF888888),fontSize: 16),
              ),
            )
          ],
        ));
  }
}
