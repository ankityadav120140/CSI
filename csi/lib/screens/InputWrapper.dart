// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:csi/widgets/Button.dart';
import 'package:csi/widgets/InputField.dart';
import 'package:flutter/material.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          Button()
        ],
      ),
    );
  }
}
