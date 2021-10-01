// ignore_for_file: use_key_in_widget_constructors

import 'package:csi/screens/about_us.dart';
import 'package:csi/screens/blockchain.dart';
import 'package:csi/screens/cine.dart';
import 'package:csi/screens/ethical_hacking.dart';
import 'package:csi/screens/java_and_android.dart';
import 'package:csi/screens/nodejs_with_mongo.dart';
import 'package:csi/screens/rdm.dart';
import 'package:csi/screens/the_initiative.dart';
import 'package:csi/screens/ui_with_mongo.dart';
import 'package:csi/screens/vacanza.dart';
import 'package:csi/screens/web_dev.dart';
import 'package:csi/screens/web_tech_with_ang.dart';
import 'package:flutter/material.dart';

import './screens/home_page_screen.dart';
import './screens/our_features_screen.dart';
import './screens/second_year_screen.dart';
import './screens/third_year_screen.dart';
import './screens/fourth_year_screen.dart';
import './screens/contact_us_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSI',
      theme: ThemeData(),
      home: ContactUs(),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'our_features': (context) => OurFeaturesScreen(),
        'second_year': (context) => SecondYearScreen(),
        'third_year': (context) => ThirdYearScreen(),
        'fourth_year': (context) => FourthYearScreen(),
        'about_us': (context) => const aboutUs(),
        'cine': (context) => const cine(),
        'the_initiative': (context) => const the_initiative(),
        'rdm': (context) => const rdm(),
        'vacanza': (context) => const vacanza(),
        'ui_with_mongo': (context) => const ui_with_mongo(),
        'java_and_android': (context) => const java_and_android(),
        'ethical_hacking': (context) => const ethical_hacking(),
        'web_dev': (context) => const web_dev(),
        'web_tech_with_ang': (context) => const web_tech_with_ang(),
        'blockchain': (context) => const blockchain(),
        'nodejs_mongo': (context) => const nodejs_with_mongo(),
      },
    );
  }
}
