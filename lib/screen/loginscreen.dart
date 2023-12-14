import 'package:assignment/screen/homescreen.dart';
import 'package:assignment/screen/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                height: MediaQuery.of(context).size.height * .4,
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 5.5,
                      height: MediaQuery.of(context).size.height * .065,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade900,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35))),
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.blue.shade900),
                        ),
                      ),
                    )
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
