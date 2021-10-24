// ignore_for_file: use_key_in_widget_constructors, unused_import, avoid_print, prefer_const_constructors

import 'package:csi/screens/Login_registration.dart';
import 'package:csi/screens/about_us.dart';
import 'package:csi/screens/blockchain.dart';
import 'package:csi/screens/cine.dart';
import 'package:csi/screens/ethical_hacking.dart';
import 'package:csi/screens/java_and_android.dart';
import 'package:csi/screens/join_us.dart';
import 'package:csi/screens/nodejs_with_mongo.dart';
import 'package:csi/screens/onboarding_page.dart';
import 'package:csi/screens/our_alumni.dart';
import 'package:csi/screens/rdm.dart';
import 'package:csi/screens/service_domain_screen.dart';
import 'package:csi/screens/the_initiative.dart';
import 'package:csi/screens/ui_with_mongo.dart';
import 'package:csi/screens/vacanza.dart';
import 'package:csi/screens/web_dev.dart';
import 'package:csi/screens/web_tech_with_ang.dart';
import 'package:flutter/material.dart';
import './screens/registration_page.dart';
import './screens/home_page_screen.dart';
import './screens/our_features_screen.dart';
import './screens/second_year_screen.dart';
import './screens/third_year_screen.dart';
import './screens/fourth_year_screen.dart';
import './screens/contact_us_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Something went wrong");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'CSI',
                theme: ThemeData(),
                home: ContactUs(),
                initialRoute: 'onboarding',
                routes: {
                  'onboarding': (context) => OnBoardingPage(),
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
                  'service_domain': (context) => ServiceDomain(),
                  'join_us': (context) => JoinUs(),
                  'our_alumni': (context) => const our_alumni(),
                  'register': (context) => RegistrationScreen(),
                });
          }
          return CircularProgressIndicator();
        });
  }
}
