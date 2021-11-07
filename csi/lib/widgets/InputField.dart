// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, avoid_print, override_on_non_overriding_member
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final userRef = FirebaseFirestore.instance.collection('users');

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  var name = "";
  var email = "";
  var branch = "";
  var phone = "";
  var year = "";

  final _formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final branchContoller = TextEditingController();
  final yearController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  CollectionReference students =
      FirebaseFirestore.instance.collection('students');
  Future<void> addUser() {
    return students
        .add({
          'name': name,
          'email': email,
          'phone No': phone,
          'branch': branch,
          'year': year,
        })
        .then((value) => print("user added"))
        .catchError((error) => print('Failed to add user:$error'));
  }

  clearText() {
    nameController.clear();
    emailController.clear();
    branchContoller.clear();
    phoneController.clear();
    yearController.clear();
  }

  void dipose() {
    nameController.dispose();
    emailController.dispose();
    branchContoller.dispose();
    phoneController.dispose();
    yearController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Form(
      key: _formkey,

      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              RichText(
                  text: TextSpan(
                text: "NAME",
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              )),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: TextFormField(

                 controller: nameController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      hintStyle: TextStyle(color: Colors.grey),
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                text: "BRANCH",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              )),
              Container(
                padding: EdgeInsets.all(10),

                child: TextFormField(
                  controller: branchContoller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your branch';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Branch",
                    hintStyle: TextStyle(color: Colors.grey),
                   

                  ),

                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                text: "YEAR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              )),
              Container(
                padding: EdgeInsets.all(10),

                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your year";
                    }else if(value.length!=1 ){
                      return "Please enter correct year";
                    }else if(value.contains('5') ||value.contains('6') ||value.contains('7')||value.contains('8')||value.contains('9')){
                      return "Please enter correct year (From : 1,2,3,4)";
                    }
                    return null;
                  },
                  controller: yearController,
                  decoration: InputDecoration(
                      hintText: "Enter your Year",
                      hintStyle: TextStyle(color: Colors.grey),
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                text: "EMAIL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              )),
              Container(
                padding: EdgeInsets.all(10),

                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator:  (value) {
                          if(value ==null || value.isEmpty){
                              return 'Please enter your email';
                             }
                          else if(!value.contains('@akgec.ac.in')){
                            return 'Please enter your college email';
                            }
                          return null;
                       },

                  decoration: InputDecoration(
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: Colors.grey),
                     ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                text: "PHONE NO.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              )),
              Container(
                padding: EdgeInsets.all(10),

                child: TextFormField(
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your phone number';
                    } else if (value.length != 10) {
                      return 'please enter 10 digit phone no.';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Enter your Phone No.",
                    hintStyle: TextStyle(color: Colors.grey),

                  ),
                ),
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
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          name = nameController.text;
                          email = emailController.text;
                          year = yearController.text;
                          branch = branchContoller.text;
                          phone = phoneController.text;

                          addUser();
                          clearText();
                        });
                      }
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
