// ignore_for_file: camel_case_types, unnecessary_new, prefer_const_constructors, deprecated_member_use, dead_code, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

    Widget _workshop(String name, String path, String route) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          margin: EdgeInsets.only(top: 50, bottom: 50),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
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
                  top: 40,
                  left: 20,
                  bottom: 20,
                  right: 20,
                ),
                padding: EdgeInsets.only(
                  top: 30,
                  left: 5,
                  right: 5,
                ),
                child: Image(
                  image: AssetImage(
                    path,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                // width: 200,
                child: RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 15,
                    ),
                    child: Text(
                      name,
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
                    Navigator.pushNamed(context, route);
                  },
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget _reviews(String review, String name, String branch) {
      return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: HexColor('#ffffff'),
          borderRadius: BorderRadius.circular(20),
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
          top: 40,
          left: 20,
          bottom: 40,
          right: 20,
        ),
        padding: EdgeInsets.only(
          top: 30,
          left: 23,
          right: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                review,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  letterSpacing: 1.6,
                  height: 1.4,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),

                // style: TextStyle(
                //   color: Colors.black,
                //   fontSize: 35,
                //   fontFamily: 'PlayfairDisplay',
                //   fontWeight: FontWeight.w500,

                // ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 26),
              child: Divider(color: Colors.black),
            ),
            Container(
              // margin: EdgeInsets.only(top: 26),
              child: Text(
                name,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 26),
              child: Text(
                branch,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  letterSpacing: 1.6,
                  height: 1.4,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      );
    }

    var aIndex = 0;
    final wsImages = [
      'assets/images/workshops/u1.jpg',
      'assets/images/workshops/u2.jpg',
      'assets/images/workshops/u3.jpg',
      'assets/images/workshops/u4.jpg',
      'assets/images/workshops/u5.jpg',
      'assets/images/workshops/u6.jpeg',
    ];

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
                  Container(
                    margin: EdgeInsets.only(top: mediaQuery.size.height * 0.1),
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
                          'Gallery',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: wsImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final wImg = wsImages[index];
                      return buildImage(wImg, index);
                    },
                    options: CarouselOptions(
                        height: 400,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        onPageChanged: (index, reason) {
                          setState(() {
                            aIndex = index;
                          });
                        }),
                  ),

                  Container(
                    // margin: EdgeInsets.only(top: mediaQuery.size.height * 0.1),
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
                          'Reviews',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        _reviews(
                            'It was quite good and I learnt very much about JS. Mentors were good.',
                            'Ankit Yadav',
                            'CSIT'),
                        _reviews(
                            'It was quite good and I learnt very much about JS. Mentors were good.',
                            'Rajat Mangat',
                            'CS'),
                        _reviews(
                            'It was quite good and I learnt very much about JS. Mentors were good.',
                            'Harsh Vardhan',
                            'CSIT'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Show All",
                            style: TextStyle(
                              fontSize: 17,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: mediaQuery.size.height * 0.1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [HexColor('#79B6FC'), Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.5, 1.8],
                          ),
                        ),
                        child: Text(
                          'Other Workshops',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        _workshop(
                          'Java And Android',
                          'assets/images/workshop.png',
                          'java_and_android',
                        ),
                        _workshop(
                          'Ethical Hacking',
                          'assets/images/workshop.png',
                          'ethical_hacking',
                        ),
                        _workshop(
                          'WEb Development',
                          'assets/images/workshop.png',
                          'web_dev',
                        ),
                        _workshop(
                          'Web Tech With Angular',
                          'assets/images/workshop.png',
                          'web_tech_with_ang',
                        ),
                        _workshop(
                          'Blockchain',
                          'assets/images/workshop.png',
                          'blockchain',
                        ),
                        _workshop(
                          'NodeJS With MongoDB',
                          'assets/images/workshop.png',
                          'nodejs_mongo',
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

  Widget buildImage(String wsImage, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // color: Colors.grey,
      child: Image(
        image: AssetImage(
          wsImage,
        ),
        fit: BoxFit.contain,
      ),
    );
  }
}
