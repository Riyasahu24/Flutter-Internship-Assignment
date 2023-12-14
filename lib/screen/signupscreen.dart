import 'package:assignment/screen/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5],
            )),
          ),
          Center(
            child: Expanded(
              child: Container(
                // margin: EdgeInsets.only(top: 200),
                padding: EdgeInsets.only(left: 12, right: 12),
                height: MediaQuery.of(context).size.height * .6,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(0.9, 0.3),
                        blurRadius: 10,
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade900,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      color: Colors.grey[200],
                      height: MediaQuery.of(context).size.height * .065,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your Name",
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.grey.shade500)),
                      ),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade900,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      color: Colors.grey[200],
                      height: MediaQuery.of(context).size.height * .065,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your email",
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.grey.shade500)),
                      ),
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade900,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      color: Colors.grey[200],
                      height: MediaQuery.of(context).size.height * .065,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your password",
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.grey.shade500,
                            )),
                      ),
                    ),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade900,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      color: Colors.grey[200],
                      height: MediaQuery.of(context).size.height * .065,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your confirm password",
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.grey.shade500)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[900]),
                        child: Center(
                            child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.white),
                        )))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
