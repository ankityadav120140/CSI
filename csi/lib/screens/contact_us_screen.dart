// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:hexcolor/hexcolor.dart';

import '../widgets/app_drawer.dart';

class ContactUs extends StatelessWidget {
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
              // margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              // height: mediaQuery.size.height * 0.28,
              decoration: BoxDecoration(
                color: HexColor('#E7F3FF'),
                image: DecorationImage(
                  image: AssetImage('assets/images/home_page_bg.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/menu.svg',
                        height: 18,
                        width: 18,
                        // color: Colors.black,
                      ),
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                    ),
                  ),
                  Container(
                    height: 150,
                    padding: EdgeInsets.only(top: 30, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // color: Colors.red,

                          // margin: EdgeInsets.only(
                          //   left: mediaQuery.size.height * 0.02,
                          // ),

                          child: Text(
                            'Contact',
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
                          // margin: EdgeInsets.only(
                          //   left: mediaQuery.size.height * 0.02,
                          // ),

                          child: Text(
                            'Us',
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
                // bottom: mediaQuery.size.height * 0.09,
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
                    // margin: EdgeInsets.only(top: mediaQuery.size.height * 0.04),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [HexColor('#79B6FC'), Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.5, 1.8],
                          ),
                        ),
                        child: Text(
                          'Contact',
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
                      left: 30,
                      top: 21,
                    ),
                    child: Text(
                      'Our Mission',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 26,
                      left: 30,
                    ),
                    width: mediaQuery.size.width * 0.7,
                    child: Text(
                        'Our Mission is to facilitate research, knowledge sharing, learning and career enhancement for all categories of IT Professionals, while simultaneously inspiring and nurturing new entrants into the industry and helping them to integrate into the IT community.',
                        style: TextStyle(
                          height: 1.3,
                          letterSpacing: 1.5,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Container(
                    height: 220,
                    margin: EdgeInsets.only(
                      top: 46,
                      left: 11,
                      right: 11,
                      bottom: 10,
                    ),
                    padding: EdgeInsets.only(
                      top: 11,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      color: HexColor('#E7F3FF'),
                      borderRadius: BorderRadius.circular(32),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 16,
                          // spreadRadius: 5,
                          offset: Offset(
                            10,
                            10,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              color: Colors.black,
                              width: 2,
                              height: 24.5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Text(
                                  'Address',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '- Basic IT Lab, Third Floor, CS-IT Block, Ajay Kumar Garg \n  Engineering College, Ghaziabad - 201009',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto-Regular',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              color: Colors.black,
                              width: 2,
                              height: 24.5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Text(
                                  'E-mail',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '- csi@outlook.in',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto-Regular',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              color: Colors.black,
                              width: 2,
                              height: 24.5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Text(
                                  'Call Us',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '- +91-8802980454, +91-7417387372',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto-Regular',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
