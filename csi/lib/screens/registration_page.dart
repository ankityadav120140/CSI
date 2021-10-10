// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'Header.dart';
import 'package:hexcolor/hexcolor.dart';

import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [HexColor('#79B6FC'), Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.5, 1.8],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}
