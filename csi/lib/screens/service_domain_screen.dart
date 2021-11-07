// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:csi/widgets/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceDomain extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget _cards(String title1, String para, String img) {
    return Container(
      // height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor('#E7F3FF'),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            // spreadRadius: 5,
            offset: Offset(
              8,
              8,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 50,
        left: 18,
        right: 18,
        bottom: 10,
      ),
      padding: EdgeInsets.only(
        top: 27,
        left: 2,
        right: 2,
        bottom: 30,
      ),
      child: Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                width: 130,
                height: 250,
                margin: EdgeInsets.only(right: 10, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: 275,
                width: 185,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          title1,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 30,
                              height: 1,
                              fontWeight: FontWeight.w500),
                          // style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 35,
                          //   fontFamily: 'PlayfairDisplay',
                          //   fontWeight: FontWeight.w500,

                          // ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26),
                      child: Text(para,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 16,
                            letterSpacing: 1.6,
                            height: 1.4,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardsr(String title1, String para, String img) {
    return Container(
      // height: 300,
      decoration: BoxDecoration(
        color: HexColor('#E7F3FF'),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            // spreadRadius: 5,
            offset: Offset(
              8,
              8,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 50,
        left: 18,
        right: 18,
        bottom: 10,
      ),
      padding: EdgeInsets.only(
        top: 27,
        left: 2,
        right: 2,
        bottom: 30,
      ),
      child: Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                // height: 275,
                width: 185,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          title1,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 30,
                              height: 1,
                              fontWeight: FontWeight.w500),
                          // style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 35,
                          //   fontFamily: 'PlayfairDisplay',
                          //   fontWeight: FontWeight.w500,

                          // ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26),
                      child: Text(para,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 16,
                            letterSpacing: 1.6,
                            height: 1.4,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 130,
                height: 250,
                margin: EdgeInsets.only(right: 10, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
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
                margin: EdgeInsets.only(left: 10.0),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: HexColor('#E7F3FF'),
                  image: DecorationImage(
                    image: AssetImage('assets/images/service domains.png'),
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
                        onPressed: () =>
                            _scaffoldKey.currentState!.openDrawer(),
                      ),
                    ),
                    Container(
                      height: 130,
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: 180,
                          // color: HexColor('#79B6FC'),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [HexColor('#79B6FC'), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.5, 1.8],
                            ),
                          ),
                          child: Text(
                            'Services Domains',
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _cards(
                              'Web-D',
                              'We are the trendsetters in web development. Our team makes use of the latest design principles and technologies to develop content and websites that can empower people, and help them achieve perfection.',
                              'assets/images/webDev.png'),
                          _cardsr(
                              'Android-D',
                              'Our team has that edge, which makes us the leaders in application development. We live, to turn ideas full of potential into hardcore code leading to beautiful and efficient mobile applications.',
                              'assets/images/mobileDev.png'),
                          _cards(
                              'Designing',
                              'We, at CSI, have a team full of innovators and original thinkers imbued with the ability to turn the imaginations into a visually pleasing vista of creativity.',
                              'assets/images/graphicDev.png'),
                          _cardsr(
                              'Blockchain \nTechnology',
                              'We develop and work on the Blockchain technology. Our team focus on basic fundamentals of Blockchain to establish a task and uses Blockchain Programming to perform various secured projects.',
                              'assets/images/blockchainTech.png'),
                        ],
                      ),
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
