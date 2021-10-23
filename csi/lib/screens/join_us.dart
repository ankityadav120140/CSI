// ignore_for_file: use_key_in_widget_constructors, unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, deprecated_member_use, unused_import

import 'package:csi/screens/cine.dart';
import 'package:csi/widgets/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class JoinUs extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget _cards(String title1, String title2, String para) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor('#E7F3FF'),
        borderRadius: BorderRadius.circular(20),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            // spreadRadius: 5,
            offset: Offset(
              8,
              8,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 30,
        left: 10,
        right: 10,
      ),
      padding: EdgeInsets.only(
        top: 17,
        left: 23,
        right: 5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // border: Border.symmetric(vertical: ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(300),
                  bottomRight: Radius.circular(300)),
              gradient: LinearGradient(
                colors: [HexColor('#79B6FC'), Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1.8],
              ),
            ),
            child: Text(
              title2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          Container(
            height: 145,
            width: 190,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    title1,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 28,
                        height: 1,
                        fontWeight: FontWeight.w400),
                    // style: TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 35,
                    //   fontFamily: 'PlayfairDisplay',
                    //   fontWeight: FontWeight.w500,

                    // ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  child: Text(para,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 13,
                        letterSpacing: 1.6,
                        height: 1.4,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: HexColor('#E7F3FF'),
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 220,
                margin: EdgeInsets.only(left: 10.0),
                width: double.infinity,
                //height: mediaQuery.size.height * 0.28,
                decoration: BoxDecoration(
                  color: HexColor('#E7F3FF'),
                  image: DecorationImage(
                    image: AssetImage('assets/images/our feature page bg.png'),
                    fit: BoxFit.contain,
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
                      // height: 0,
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            // color: Colors.red,

                            margin: EdgeInsets.only(
                              left: mediaQuery.size.height * 0.02,
                            ),

                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 45,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          Container(
                            // color: Colors.blue,
                            margin: EdgeInsets.only(
                              left: mediaQuery.size.height * 0.02,
                            ),

                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 45,
                                height: 1,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.05,
                  bottom: mediaQuery.size.height * 0.069,
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
                      margin: EdgeInsets.only(
                        left: mediaQuery.size.height * 0.03,
                        // bottom: mediaQuery.size.height * 0.03,
                      ),
                      child: Text(
                        'Join Us',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _cards('Register', '1',
                              'Register for and participate in the annual CSI Induction for New  Entants : CINE'),
                          _cards('Test', '2',
                              'Show us your potential by giving a simple test!'),
                          _cards('Interview', '3',
                              'Prove your worth in the mano-a-mano interview round.'),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 40),
                        child: RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 30,
                            ),
                            child: Text(
                              "CINE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
                            Navigator.pushNamed(context, "cine");
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.03,
                    )
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
