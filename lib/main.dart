import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Color(0xFFF29C1F),
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gilroy-Bold'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: Container(
                        height: 40.0,
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
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gilroy-Bold')),
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
//                  Row(
//                    children: <Widget>[
//                      Container(
//                        child:
//                      ),
//                    ],
//                  ),
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
                      Icons.vpn_key,
                      color: Color(0xFFF29C1F),
                    )),
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Checkbox(
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
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Color(0xFFF29C1F),
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard()));
                          },
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gilroy-Bold'),
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
                'Forgot Password?',
                style: TextStyle(
                    fontFamily: 'Gilroy-Medium', color: Color(0xFF888888)),
              ),
            ),
            Center(
              child: Text(
                'Dont have an account yet? Register',
                style: TextStyle(
                    fontFamily: 'Gilroy-Medium', color: Color(0xFF888888)),
              ),
            )
          ],
        ));
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {

    final item1 = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: Icon(
                Icons.face,
                size: 40,
                color: Color(0xFFF29C1F),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 250,
              child: Stack(
                children: <Widget>[
                  Text(
                    "Litecoin",
                    style: TextStyle(fontFamily: "Gilroy-Bold", fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "\$3,490.79    ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold", fontSize: 15),
                        ),
                        Text(
                          "0.00730992 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold",
                              fontSize: 15,
                              color: Color(0xFF28D8A1)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(color: Color(0xFF28D8A1)),
                          child: Text(
                            " +           ",
                            style: TextStyle(
                                fontFamily: "Gilroy-Bold",
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "Price can decrese by \$20 by EOM",
                      style: TextStyle(
                          fontFamily: "Gilroy-Bold",
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Icon(Icons.star),
            Icon(Icons.settings),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 10, bottom: 20, right: 10),
                width: 360.0,
                height: 110.0,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/grafic.png")),
                )),
          ],
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Trend for last:"),
              ),
              Container(

                margin: EdgeInsets.only(left: 20),
                child: Text("1d",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: Color(0xFFF29C1F),
                borderRadius: BorderRadius.circular(5.0),),
                child: Text(
                    "  7d  ",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("1m",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("3m",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("1y",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),

                child: Text("YTD",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ],
          ),

      ],
    );

    final item2 = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: Icon(
                Icons.account_circle,
                size: 40,
                color: Color(0xFFF29C1F),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 250,
              child: Stack(
                children: <Widget>[
                  Text(
                    "Etherium",
                    style: TextStyle(fontFamily: "Gilroy-Bold", fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "\$91.01 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold", fontSize: 15),
                        ),
                        Text(
                          "0.026441 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold",
                              fontSize: 15,
                              color: Colors.red),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.red),
                          child: Text(
                            "-0.02%",
                            style: TextStyle(
                                fontFamily: "Gilroy-Bold",
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "Price can decrese by \$20 by EOM",
                      style: TextStyle(
                          fontFamily: "Gilroy-Bold",
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Icon(Icons.star),
            Icon(Icons.settings),
          ],
        ),
      ],
    );

    final item3 = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: Icon(
                Icons.face,
                size: 40,
                color: Color(0xFFF29C1F),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 250,
              child: Stack(
                children: <Widget>[
                  Text(
                    "Litecoin",
                    style: TextStyle(fontFamily: "Gilroy-Bold", fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "\$25.49 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold", fontSize: 15),
                        ),
                        Text(
                          "0.00730992 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold",
                              fontSize: 15,
                              color: Colors.red),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(color: Colors.red),
                          child: Text(
                            "-0.02%",
                            style: TextStyle(
                                fontFamily: "Gilroy-Bold",
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "Price can decrese by \$20 by EOM",
                      style: TextStyle(
                          fontFamily: "Gilroy-Bold",
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Icon(Icons.star),
            Icon(Icons.settings),
          ],
        ),
      ],
    );

    final currentRatesView = Container(
        decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
        margin: EdgeInsets.only(top: 18.0),
        //padding: EdgeInsets.only(top: 18.0, left: 0, right: 0),
        child: Column(
          children: <Widget>[
            Container(
              height: 230.0,
              width: 380.0,
              child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  shadowColor: Colors.blueGrey,
                  color: Colors.white,
                  elevation: 7.0,
                  child: item1),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 100.0,
              width: 380.0,
              child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  shadowColor: Colors.blueGrey,
                  color: Colors.white,
                  elevation: 7.0,
                  child: item2),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 100.0,
              width: 380.0,
              child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  shadowColor: Colors.blueGrey,
                  color: Colors.white,
                  elevation: 7.0,
                  child: item3),
            ),
          ],
        ));

    return MaterialApp(
      theme: ThemeData(
//        primaryColor: Colors.white,
          primaryColor: Color(0xFFF29C1F),
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Current Rates"),
                Tab(text: "Projections"),
              ],
            ),
            title: Container(
              width: 350,
              height: 30,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
              //margin: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Text('Search for anything..',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),)
                ],
              ) ,
            ),
          ),
          body: TabBarView(
            children: [currentRatesView, Text("Projections Items")],
          ),
          bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.white,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.orangeAccent,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: new TextStyle(
                        color: Colors
                            .grey))), // sets the inactive color of the `BottomNavigationBar`
            child: new BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                new BottomNavigationBarItem(
                  icon: new Icon(Icons.border_all),
                  title: new Text("Home"),
                ),
                new BottomNavigationBarItem(
                  icon: new Icon(Icons.equalizer),
                  title: new Text("Markets"),
                ),
                new BottomNavigationBarItem(
                  icon: new Icon(Icons.wallpaper),
                  title: new Text("Wallet"),
                ),
                new BottomNavigationBarItem(
                  icon: new Icon(Icons.tablet),
                  title: new Text("Trades"),
                ),
                new BottomNavigationBarItem(
                  icon: new Icon(Icons.settings),
                  title: new Text("Settings"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
