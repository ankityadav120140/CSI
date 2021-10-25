// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_page_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'About our Team',
            body:
                'CSI has been highly successful in setting highest benchmarks in the field of professional competence with high quality commitment.',
            image: buildImage('assets/images/team ob.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Get to know Us',
            body: 'website: https://csiakgec.in/ \n Instagram: csi_akgec',
            image: buildImage('assets/images/know us ob.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Let's get Started",
            body: 'Join the journey to the infinite possibilities.',
            image: buildImage('assets/images/started ob.png'),
            decoration: getPageDecoration(),
          ),
        ],
        done: Container(
          height: 45,
          width: 85,
          child: Center(
            child: Text(
              'Finish',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: HexColor('#79B6FC'),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onDone: () {
          goToHome(context);
        },
        showSkipButton: true,
        skip: Row(
          children: [
            Text(
              'SKIP',
            ),
            Icon(
              Icons.double_arrow_rounded,
              color: HexColor('#79B6FC'),
              size: 15,
            ),
          ],
        ),
        onSkip: () => goToHome(context),
        next: Container(
          height: 45,
          width: 85,
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: HexColor('#79B6FC'),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        dotsDecorator: getDotDecoration(),
        animationDuration: 600,
      ),
    );
  }

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );

  Widget buildImage(String img) => Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              img,
            ),
            fit: BoxFit.contain,
          ),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        descriptionPadding: EdgeInsets.all(5).copyWith(bottom: 0),
        imagePadding: EdgeInsets.only(top: 15),
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        size: Size(10, 10),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        activeColor: HexColor('#79B6FC'),
      );
}
