import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_page_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class  OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(

          pages: [
            PageViewModel(
              title: 'About our Team',
              body: 'The quick brown fox jumps right over the around lazy dog.',
              image: buildImage(),
              decoration: getPageDecoration(),
            ),

            PageViewModel(
              title: 'Get to know Us',
              body: 'The quick brown fox jumps right over the aound lazy dog',
              image: buildImage(),
              decoration: getPageDecoration(),
            ),

            PageViewModel(

              title: "Let's get Started",
              body: 'The man who never reads lives only one',
              image: buildImage(),
              decoration: getPageDecoration(),
            ),
          ],
          done: Container(
            height: 45,
            width: 85,
            child: Center(
              child: Text('Finish',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color:HexColor('#79B6FC'),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onDone: () {
           goToHome(context);
          },
          showSkipButton: true,
          skip: Row(
            children: [
              Text('SKIP',),
              Icon(Icons.double_arrow_rounded,
              color:HexColor('#79B6FC'),
                size: 15,
              ),

            ],
          ),
          onSkip: () => goToHome(context),
          next: Container(
            height: 45,
            width: 85,
            child: Center(
              child: Text('Next',
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
    MaterialPageRoute(builder: (_) =>HomeScreen()),
  );
  
  Widget buildImage() =>Container(
    width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/our feature page bg.png'),
        fit: BoxFit.contain,
      ),),
      );


  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),
    bodyTextStyle: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),
    descriptionPadding: EdgeInsets.all(5).copyWith(bottom: 0),
    imagePadding: EdgeInsets.only(top: 15),


  );
  
  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    size: Size(10, 10),
    activeSize: Size(22.0,10.0),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    activeColor: HexColor('#79B6FC'),
  );
}


