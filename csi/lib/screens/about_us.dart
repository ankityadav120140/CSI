// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_new, avoid_unnecessary_containers

import 'package:csi/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  _aboutUsState createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
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
              height: 250,
              decoration: BoxDecoration(
                color: HexColor('#E7F3FF'),
                image: DecorationImage(
                  image: AssetImage('assets/images/logocsiCenter.png'),
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
                    // color: Colors.blue,
                    height: 150,
                    margin: EdgeInsets.only(
                      left: mediaQuery.size.height * 0.02,
                    ),
                    padding: EdgeInsets.only(
                      top: mediaQuery.size.height * 0.078,
                    ),
                    // padding: EdgeInsets.all(30),

                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 45,
                        letterSpacing: 2,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              padding: EdgeInsets.only(
                top: mediaQuery.size.height * 0.05,
                bottom: mediaQuery.size.height * 0.09,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [HexColor('#7CA6F0'), HexColor('#BFD4F9')],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // ignore: prefer_const_literals_to_create_immutables
                  stops: [0.5, 1.8],
                ),
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
                        alignment: Alignment.center,
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue.shade900, HexColor('#79B6FC')],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            // ignore: prefer_const_literals_to_create_immutables
                            stops: [0.5, 1.8],
                          ),
                        ),
                        child: Text(
                          'Computer Society Of India',
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
                      left: mediaQuery.size.height * 0.03,
                      top: mediaQuery.size.height * 0.06,
                    ),
                    child: Text(
                      'Team CSI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: mediaQuery.size.height * 0.04,
                      left: mediaQuery.size.height * 0.03,
                      right: mediaQuery.size.height * 0.03,
                    ),
                    // width: mediaQuery.size.width * 0.7,
                    child: Text(
                      'The COMPUTER SOCIETY OF INDIA (acronym as CSI) was formed in the year 1965. Since its inception, CSI has been paving the way for the IT industry to advance in the right direction. By indulging within itself most famous IT leaders, brilliant scientists and dedicated academicians, CSI has been highly successful in setting highest benchmarks in the field of professional competence with high quality commitment.It has set up a remarkable example by providing high range of services and networking opportunities through workshops, seminars, conventions and courses in which major faces of the industry have actively participated and exchanged valuable knowledge and ideas. Today CSI has 71 chapters, 418 student branches and more than 90000 registered members.The statistics speak all about the importance of CSI in the countrys most fashionable IT industry.',
                      style: TextStyle(
                        color: Colors.white,
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
                      top: mediaQuery.size.height * 0.04,
                      left: mediaQuery.size.height * 0.03,
                      right: mediaQuery.size.height * 0.03,
                    ),
                    // width: mediaQuery.size.width * 0.7,
                    child: Text(
                      'C.S.I. in A.K.G.E.C. Since CSI student chapter has evolved in AKGEC, it has been one of the most active societies of the institute by organising events and workshops which have proven to be blockbusters in the college. The active image of the society becomes more prominent during the annual national level event, The Initiative, wherein the society asks students to provide solutions to the burning issues our country is facing. CSI AKGEC Chapter is known for its highly skilled team members, and the efficiency & quality of the events and workshops that it conducts. Recently Team CSI conducted Java and Android workshop, Ethical Hacking workshop which saw immense participation among the students! Another blockbuster event of CSI AKGEC chapter includes the online gaming event Route De Moksha which has always proven to be the best event conducted in the College tech fest.Though not being organised since a couple years, lets hope the famous RDM will make a return soon enough! The incredible efforts put in by the student members of the society always earn significant admiration.',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.3,
                        letterSpacing: 1.5,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: launchToCsi,
                    child: Container(
                        width: mediaQuery.size.hashCode * 1,
                        margin: const EdgeInsets.all(20),
                        child: Image(
                          image: AssetImage("assets/images/csi_logo.png"),
                        )),
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
