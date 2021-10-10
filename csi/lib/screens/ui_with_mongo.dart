// ignore_for_file: camel_case_types, unnecessary_new, prefer_const_constructors, deprecated_member_use, dead_code

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ui_with_mongo extends StatefulWidget {
  const ui_with_mongo({Key? key}) : super(key: key);

  @override
  _ui_with_mongoState createState() => _ui_with_mongoState();
}

class _ui_with_mongoState extends State<ui_with_mongo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    bool reg = false;
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
                  image: AssetImage('assets/images/workshop.png'),
                  fit: BoxFit.fill,
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
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    height: 250,
                    margin: EdgeInsets.only(
                      left: mediaQuery.size.height * 0.02,
                    ),
                    padding: EdgeInsets.only(
                      top: mediaQuery.size.height * 0.078,
                    ),
                    // padding: EdgeInsets.all(30),

                    // child: Text(
                    //   'CINE',
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //     fontFamily: 'Poppins',
                    //     fontWeight: FontWeight.w600,
                    //     fontSize: 45,
                    //     letterSpacing: 2,
                    //   ),
                    // ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: mediaQuery.size.height * 0.05,
                bottom: mediaQuery.size.height * 0.15,
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
                  // Container(
                  //   // margin: EdgeInsets.only(top: mediaQuery.size.height * 0.04),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.only(
                  //       topRight: Radius.circular(32),
                  //       bottomRight: Radius.circular(32),
                  //     ),
                  //     child: Container(
                  //       alignment: Alignment.center,
                  //       height: 50,
                  //       width: 136,
                  //       decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //           colors: [HexColor('#79B6FC'), Colors.white],
                  //           begin: Alignment.topLeft,
                  //           end: Alignment.bottomRight,
                  //           stops: [0.5, 1.8],
                  //         ),
                  //       ),
                  //       child: Text(
                  //         'CINE $year',
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 16,
                  //             fontFamily: 'Poppins',
                  //             fontWeight: FontWeight.w500),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.only(
                      left: mediaQuery.size.height * 0.03,
                      top: mediaQuery.size.height * 0.06,
                    ),
                    child: Text(
                      'UI With MongoDB',
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
                      "Team CSI proudly announces the workshop on UI with mongoDB to make the students aware with the current web technologies. The workshop also focuses on DBMS. The classes will be conducted in the Advanced IT labs from 15th of September.",
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
                    child: reg
                        ? RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                                horizontal: 15,
                              ),
                              child: Text(
                                'Register Now',
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
                            onPressed: () {},
                          )
                        : RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                                horizontal: 15,
                              ),
                              child: Text(
                                'Registration Closed',
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
                            onPressed: () {},
                          ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
