// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: HexColor('#E7F3FF'),
      key: _scaffoldKey,
      drawer: AppDrawer(),
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10),
                width: double.infinity,
                // height: mediaQuery.size.height * 0.28,
                decoration: BoxDecoration(
                  color: HexColor('#E7F3FF'),
                  image: DecorationImage(
                    image: AssetImage('assets/images/in_office.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/menu.svg',
                          height: 18,
                          width: 18,
                          // color: Colors.black,
                        ),
                        onPressed: () =>
                            _scaffoldKey.currentState!.openDrawer(),
                      ),
                    ),
                    Container(
                        // color: Colors.blue,
                        height: 150,
                        margin: EdgeInsets.only(
                          left: mediaQuery.size.height * 0.02,
                        ),
                        padding: EdgeInsets.only(
                          top: mediaQuery.size.height * 0.078,
                        ),
                        // padding: EdgeInsets.all(30),
                        child: Container()),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.05,
                  bottom: mediaQuery.size.height * 0.13,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      // color: Colors.blue,
                      height: 150,
                      margin: EdgeInsets.only(
                        left: mediaQuery.size.height * 0.02,
                      ),
                      padding: EdgeInsets.only(
                        top: mediaQuery.size.height * 0.048,
                      ),
                      // padding: EdgeInsets.all(30),
                      child: Text(
                        'HOME',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 45,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: mediaQuery.size.height * 0.04),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 136,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [HexColor('#79B6FC'), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.5, 1.8],
                            ),
                          ),
                          child: Text(
                            'Who we are',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: mediaQuery.size.height * 0.03,
                        top: mediaQuery.size.height * 0.06,
                      ),
                      child: Text(
                        'Team CSI',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: mediaQuery.size.height * 0.04,
                        left: mediaQuery.size.height * 0.03,
                      ),
                      width: mediaQuery.size.width * 0.7,
                      child: Text(
                        'The COMPUTER SOCIETY OF INDIA (acronym as CSI) was formed in the year 1965. Since its inception, CSI has been paving the way for the IT industry to advance in the right direction. By indulging within itself most famous IT leaders, brilliant scientists and dedicated academicians.',
                        style: TextStyle(
                          height: 1.3,
                          letterSpacing: 1.5,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: mediaQuery.size.height * 0.03,
                        top: mediaQuery.size.height * 0.10,
                      ),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),
                          child: Text(
                            'Know More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        elevation: 5,
                        color: HexColor('#79B6FC'),
                        onPressed: () {
                          Navigator.pushNamed(context, 'about_us');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
