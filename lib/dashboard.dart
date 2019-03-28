import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/helper.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final search = Container(
      width: 350,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      //margin: EdgeInsets.only(left: 20),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            ),
          ),
          Text(
            'Search for anything..',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          )
        ],
      ),
    );

    final item1 = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: new Icon(
                CustomIcons.bitcoin,
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
                    "Bitcoin",
                    style: TextStyle(fontFamily: "Gilroy-Bold", fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "\$3,490.79 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold", fontSize: 15),
                        ),
                        Text(
                          "↓ 20.1304 ",
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
            Icon(Icons.star_border, color: Colors.grey),
            Icon(
              CustomIcons.menuOptions,
              color: Colors.grey,
            ),
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
              child: Text(
                "1d",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Color(0xFFF29C1F),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child:                           Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
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
                child: Text(
                  "  7d  ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "1m",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "3m",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "1y",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "YTD",
                style: TextStyle(color: Colors.grey),
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
                CustomIcons.ethereum,
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
                          "↓ 0.026441 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold",

                              fontSize: 15,
                              color: Colors.red),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.red),
                          child: Text(
                            " -0.02%  ",
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
            Icon(Icons.star_border, color: Colors.grey),
            Icon(
              CustomIcons.menuOptions,
              color: Colors.grey,
            ),
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
                CustomIcons.litecoin,
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
                          "\$25.49  ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold", fontSize: 15),
                        ),
                        Text(
                          "↓ 0.00730992 ",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold",
                              fontSize: 15,
                              color: Colors.red),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(color: Colors.red),
                          child: Text(
                            " -0.02%  ",
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
            Icon(Icons.star_border, color: Colors.grey),
            Icon(
              CustomIcons.menuOptions,
              color: Colors.grey,
            ),
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
                  elevation: 4.0,
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
                  elevation: 4.0,
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
                  elevation: 4.0,
                  child: item3),
            ),
          ],
        ));

    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFF29C1F),
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: search,
        ),
        body: new DefaultTabController(
          length: 3,
          child: new Column(
            children: <Widget>[
              new Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: new Material(
                  color: Colors.white,
                  child: new TabBar(
                    indicatorColor: Color(0xFFF29C1F),
                    tabs: [
                      Tab(text: "Current Rates"),
                      Tab(text: "Projections"),
                    ],
                  ),
                ),
              ),
              new Expanded(
                child: new TabBarView(
                  children: [currentRatesView, Text("Projections Items")],
                ),
              ),
            ],
          ),
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
                icon: new Icon(
                  CustomIcons.markets,
                ),
                title: new Text("Markets"),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(
                  CustomIcons.wallet,
                ),
                title: new Text("Wallet"),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(
                  CustomIcons.trades,
                ),
                title: new Text("Trades"),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(
                  CustomIcons.settings2,
                ),
                title: new Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
