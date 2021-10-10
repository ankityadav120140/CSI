// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new
import 'package:csi/widgets/InputField.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                  image: AssetImage('assets/images/home_page_bg.png'),
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
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
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
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 150,
                    margin: EdgeInsets.only(
                      left: mediaQuery.size.height * 0.015,
                    ),
                    padding: EdgeInsets.only(
                      top: mediaQuery.size.height * 0.02,
                    ),
                    // padding: EdgeInsets.all(30),

                    child: Text(
                      'REGISTER NOW',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 35,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: mediaQuery.size.height * 0.04,
                      left: mediaQuery.size.height * 0.03,
                    ),
                    width: mediaQuery.size.width * 0.7,
                    child: InputField(),
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
                          'Register',
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
                        // Navigator.pushNamed(context, '');
                      },
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
