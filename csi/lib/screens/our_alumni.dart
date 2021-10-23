// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:csi/widgets/app_drawer.dart';
import 'package:csi/widgets/individual.dart';
import 'package:csi/widgets/our_alumni.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class our_alumni extends StatefulWidget {
  const our_alumni({Key? key}) : super(key: key);

  @override
  _our_alumniState createState() => _our_alumniState();
}

class _our_alumniState extends State<our_alumni> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: HexColor('#E7F3FF'),
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              flex: 0,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                width: double.infinity,
                // height: mediaQuery.size.height * 0.3,
                decoration: BoxDecoration(
                  color: HexColor('#E7F3FF'),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/our team bg.png',
                    ),
                    fit: BoxFit.contain,
                    colorFilter: ColorFilter.linearToSrgbGamma(),
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
                      // height: 150,
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            // color: Colors.red,

                            margin: EdgeInsets.only(
                              left: mediaQuery.size.height * 0.02,
                            ),

                            child: Text(
                              'Our',
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
                              'Alumni',
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
            ),
            Expanded(
              child: Container(
                height: mediaQuery.size.height * 0.7,
                padding: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.05,
                  // bottom: mediaQuery.size.height * 0.069,
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
                      margin: EdgeInsets.only(bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 13),
                          alignment: Alignment.centerLeft,
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
                            'Our Alumni',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      // padding: EdgeInsets.only(top: 30, bottom: 0),
                      child: GridView(
                        padding: EdgeInsets.all(10),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30,
                          childAspectRatio: 156 / 190,
                        ),
                        children: alumniYearData
                            .map(
                              (indData) => Individual(
                                indData.name,
                                indData.imageUrl,
                                indData.facebookUrl,
                                indData.githubUrl,
                                indData.linkedinUrl,
                              ),
                            )
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
