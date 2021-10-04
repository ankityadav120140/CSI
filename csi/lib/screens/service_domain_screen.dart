import 'package:csi/widgets/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class  ServiceDomain extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget _cards(String title1, String para) {
    return Container(


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
        left: 2,
        bottom: 10,

      ),
      padding: EdgeInsets.only(
        top: 27,
        left: 2,
        right: 2,
      ),
      child: Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                width: 130,
                height: 250,
                margin: EdgeInsets.only(right: 10,bottom: 10),

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/our feature page bg.png'),
                    fit: BoxFit.fitHeight,
                  ),

                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 275,
                width: 185,
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(bottom: 10),
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

  Widget _cardsr(String title1, String para) {
    return Container(
      height: 275,
      
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
        left: 2,
        bottom: 10,

      ),
      padding: EdgeInsets.only(
        top: 27,
        left: 2,
        right: 2,
      ),
      child: Expanded(
        child: Row(
          children: <Widget>[

            Expanded(
              child: Container(
                height: 275,
                width: 185,
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(bottom: 10),
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
                margin: EdgeInsets.only(right: 10,bottom: 10),

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/our feature page bg.png'),
                    fit: BoxFit.fitHeight,
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
          child:SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: double.infinity,
                  //height: mediaQuery.size.height * 0.28,
                  decoration: BoxDecoration(
                    color:  HexColor('#E7F3FF'),
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
                          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
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
                                'Service',
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
                                'Domains',
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
                            width: 120,
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
                              'Services',
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
                            _cards('Web-D',
                                'We  and we create those platforms to put out their innovative ideas and beliefs, to create a better world.'),
                            _cardsr('Android-D',
                                'We at ing which enables others to  ideas and beliefs, to create a better world.'),
                            _cards('Designing',
                                'We at st, , to create a better world.'),
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