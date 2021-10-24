// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, use_key_in_widget_constructors, camel_case_types, deprecated_member_use, unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class the_initiative extends StatefulWidget {
  const the_initiative({Key? key}) : super(key: key);

  @override
  _the_initiativeState createState() => _the_initiativeState();
}

class _the_initiativeState extends State<the_initiative> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    var reg = false;

    Widget _events(String name, String path, String route) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          // width: 400,
          margin: EdgeInsets.only(top: 50, bottom: 50),
          child: Column(
            children: [
              Container(
                width: 280,
                height: 200,
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
                  left: 23,
                  right: 5,
                ),
                child: Image(
                  image: AssetImage(path),
                ),
              ),
              Container(
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
    final eventImg = [
      'assets/images/initiative/ini1.jpg',
      'assets/images/initiative/ini2.jpg',
      'assets/images/initiative/ini3.jpg',
      'assets/images/initiative/ini4.jpg',
      'assets/images/initiative/ini5.jpg',
      'assets/images/initiative/ini6.jpg',
      'assets/images/initiative/ini7.jpg',
      'assets/images/initiative/ini8.jpg',
      'assets/images/initiative/ini9.jpg',
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
                  image: AssetImage('assets/images/initiative.png'),
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
                    //   'THE INITIATIVE',
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
                bottom: mediaQuery.size.height * 0.09,
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
                      //         'THE INITIATIVE',
                      //         style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontFamily: 'Poppins',
                      //             fontWeight: FontWeight.w500),
                      //       ),
                      //     ),
                      //   ),
                      ),
                  Container(
                    margin: EdgeInsets.only(
                      left: mediaQuery.size.height * 0.03,
                      top: mediaQuery.size.height * 0.06,
                    ),
                    child: Text(
                      'THE INITIATIVE',
                      style: TextStyle(
                          fontSize: 45,
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
                      "THE INITIATIVE is the national level ,inter college event organised by team CSI every year. This event is a hybrid of real life tasks and a closed corridor presentation , and aims at bringing out the lost questioner from an Indian prodigy , who in many ways presents the answer himself . The main aim of organizing this event is to brainstorm the minds of young students about the burning issues in the country.",
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
                    itemCount: eventImg.length,
                    itemBuilder: (context, index, realIndex) {
                      final eImg = eventImg[index];
                      return buildImage(eImg, index);
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
                        width: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [HexColor('#79B6FC'), Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.5, 1.8],
                          ),
                        ),
                        child: Text(
                          'Other Events',
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
                        _events(
                          'cine',
                          'assets/images/cineBg.png',
                          'cine',
                        ),
                        _events(
                          'RDM',
                          'assets/images/rdm.png',
                          'rdm',
                        ),
                        _events(
                          'Vacanza',
                          'assets/images/vacanza.png',
                          'vacanza',
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
