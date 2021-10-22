// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, unused_import

import 'package:csi/screens/contact_us_screen.dart';
import 'package:csi/screens/service_domain_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

const _url = 'https://csiakgec.in/index';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool teamDrop = false, wwd = false, evDrop = false, wrkDrop = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Container(
        width: mediaQuery.size.width * 0.75,
        child: Drawer(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/drawer bg.png'),
              ),
              color: HexColor('#E3F0FC'),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        //cross icon
                        leading: Icon(
                          Icons.clear,
                          color: HexColor('#2D2871'),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        //home
                        leading: Icon(
                          Icons.home,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'home');
                        },
                      ),
                      ListTile(
                        //our features
                        leading: Icon(
                          Icons.group_work,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Our Features',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'our_features');
                        },
                      ),
                      ListTile(
                        //services
                        leading: Icon(
                          Icons.extension,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Services',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'service_domain');
                        },
                      ),
                      ListTile(
                        //what we do
                        leading: Icon(
                          Icons.dns,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'What we do',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: wwd
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: HexColor('#2D2871'),
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: HexColor('#2D2871'),
                              ),
                        onTap: () {
                          if (wwd == false) {
                            wwd = true;
                            setState(() {});
                          } else if (wwd == true) {
                            wwd = false;
                            setState(() {});
                          }
                        },
                      ),
                      if (wwd)
                        Container(
                          // margin: const EdgeInsets.only(left: 50),
                          decoration: BoxDecoration(
                            // gradient: LinearGradient(
                            //   colors: [Colors.white, Colors.white10],
                            //   // begin: Alignment.bottomLeft,
                            //   // end: Alignment.topRight,
                            //   stops: [0.1, 0.9],
                            // ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 83),
                                child: ListTile(
                                  // leading: Icon(
                                  //   Icons.verified_outlined,
                                  //   color: HexColor('#2D2871'),
                                  // ),
                                  title: Text(
                                    "Events",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: evDrop
                                      ? Icon(
                                          Icons.keyboard_arrow_up,
                                          color: HexColor('#2D2871'),
                                        )
                                      : Icon(
                                          Icons.keyboard_arrow_down,
                                          color: HexColor('#2D2871'),
                                        ),
                                  onTap: () {
                                    if (evDrop == false) {
                                      evDrop = true;
                                      setState(() {});
                                    } else if (evDrop == true) {
                                      evDrop = false;
                                      setState(() {});
                                    }
                                  },
                                ),
                              ),
                              if (evDrop)
                                Container(
                                  margin: const EdgeInsets.only(left: 25),
                                  decoration: BoxDecoration(
                                    // gradient: LinearGradient(
                                    //   colors: [Colors.white, Colors.white10],
                                    //   // begin: Alignment.bottomLeft,
                                    //   // end: Alignment.topRight,
                                    //   stops: [0.1, 0.9],
                                    // ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "CINE",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              'cine',
                                            );
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "The Initiative",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              'the_initiative',
                                            );
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "RDM",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(context, 'rdm');
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "Vacanza",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'vacanza');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Container(
                                margin: const EdgeInsets.only(left: 83),
                                child: ListTile(
                                  // leading: Icon(
                                  //   Icons.verified_outlined,
                                  //   color: HexColor('#2D2871'),
                                  // ),
                                  title: Text(
                                    "Workshop",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: wrkDrop
                                      ? Icon(
                                          Icons.keyboard_arrow_up,
                                          color: HexColor('#2D2871'),
                                        )
                                      : Icon(
                                          Icons.keyboard_arrow_down,
                                          color: HexColor('#2D2871'),
                                        ),
                                  onTap: () {
                                    if (wrkDrop == false) {
                                      wrkDrop = true;
                                      setState(() {});
                                    } else if (wrkDrop == true) {
                                      wrkDrop = false;
                                      setState(() {});
                                    }
                                  },
                                ),
                              ),
                              if (wrkDrop)
                                Container(
                                  margin: const EdgeInsets.only(left: 25),
                                  decoration: BoxDecoration(
                                    // gradient: LinearGradient(
                                    //   colors: [Colors.white, Colors.white10],
                                    //   // begin: Alignment.bottomLeft,
                                    //   // end: Alignment.topRight,
                                    //   stops: [0.1, 0.9],
                                    // ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "UI With MongoDB",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              'ui_with_mongo',
                                            );
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "Java And Android",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'java_and_android');
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "Ethical Hacking",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'ethical_hacking');
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "Web Development",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'web_dev');
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "Web Tech With Angular",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'web_tech_with_ang');
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "Blockchain",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'blockchain');
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 83),
                                        child: ListTile(
                                          // leading: Icon(
                                          //   Icons.verified_outlined,
                                          //   color: HexColor('#2D2871'),
                                          // ),
                                          title: Text(
                                            "Nodejs With MongoDB",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'nodejs_mongo');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ListTile(
                        leading: Icon(
                          Icons.group,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Our Team',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        trailing: teamDrop
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: HexColor('#2D2871'),
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: HexColor('#2D2871'),
                              ),
                        onTap: () {
                          if (teamDrop == false) {
                            teamDrop = true;
                            setState(() {});
                          } else if (teamDrop == true) {
                            teamDrop = false;
                            setState(() {});
                          }
                        },
                      ),
                      if (teamDrop)
                        Container(
                          // margin: const EdgeInsets.only(left: 50),
                          decoration: BoxDecoration(
                            // gradient: LinearGradient(
                            //   colors: [Colors.white, Colors.white10],
                            //   // begin: Alignment.bottomLeft,
                            //   // end: Alignment.topRight,
                            //   stops: [0.1, 0.9],
                            // ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 83),
                                child: ListTile(
                                  // leading: Icon(
                                  //   Icons.verified_outlined,
                                  //   color: HexColor('#2D2871'),
                                  // ),
                                  title: Text(
                                    "Second Year",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onTap: () {
                                    //Navigator.pushNamed(context, 'second_year');
                                  },
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 83),
                                child: ListTile(
                                  // leading: Icon(
                                  //   Icons.verified_outlined,
                                  //   color: HexColor('#2D2871'),
                                  // ),
                                  title: Text(
                                    "Third Year",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, 'third_year');
                                  },
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 83),
                                child: ListTile(
                                  // leading: Icon(
                                  //   Icons.verified_outlined,
                                  //   color: HexColor('#2D2871'),
                                  // ),
                                  title: Text(
                                    "Fourth Year",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, 'fourth_year');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ListTile(
                        //join us
                        leading: Icon(
                          Icons.group,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Our Alumni',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'our_alumni');
                        },
                      ),
                      ListTile(
                        //join us
                        leading: Icon(
                          Icons.queue,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Join Us',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'join_us');
                        },
                      ),
                      ListTile(
                        //contact us
                        leading: Icon(
                          Icons.live_help,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Contact Us',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUs()),
                          );
                        },
                      ),
                      ListTile(
                        //about us
                        leading: Icon(
                          Icons.domain_verification,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'Verify Certificate',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                        },
                      ),
                      ListTile(
                        //about us
                        leading: Icon(
                          Icons.info,
                          color: HexColor('#2D2871'),
                        ),
                        title: Text(
                          'About Us',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'about_us');
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  //website
                  child: ListTile(
                    leading: Icon(
                      Icons.web,
                      color: HexColor('#2D2871'),
                    ),
                    title: Text(
                      'Website',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    trailing: Icon(
                      Icons.launch,
                      color: HexColor('#2D2871'),
                    ),
                    onTap: launchToCsi,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void launchToCsi() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
