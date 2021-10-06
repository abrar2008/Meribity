import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:meribilty/otp_screen.dart';
import 'package:meribilty/phone.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 700,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 400,
                        color: Color(0xFF4CE5B1),
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 140,
                        child: Container(
                          child: Image.asset("assets/Logo.png"),
                        )),
                    Positioned(
                        top: 130,
                        child: Container(
                          child: Image.asset("assets/mai.png"),
                        )),
                    Positioned(
                      top: 300,
                      left: 20,
                      child: Container(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(8.0),
                            width: 350,
                            height: 500,
                            child: ContainedTabBarView(
                              tabs: [
                                Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text('Sign In',
                                    style: TextStyle(color: Colors.black)),
                              ],
                              views: [
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              cursorColor: Colors.black,
                                              decoration: new InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder:
                                                      InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 15,
                                                          bottom: 11,
                                                          top: 11,
                                                          right: 15),
                                                  hintText: "name@example.com"),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            MyHomePage(),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  child: Text(
                                                      "Sign Up".toUpperCase(),
                                                      style: TextStyle(
                                                          fontSize: 14)),
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(Color(
                                                                  0xFF4CE5B1)),
                                                      shape: MaterialStateProperty
                                                          .all<
                                                              RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8)),
                                                            side: BorderSide(
                                                                color: Color(
                                                                    0xFF4CE5B1))),
                                                      )),
                                                  onPressed: () {},
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Icon(Icons.facebook),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                        "Connect with facebook"
                                                            .toUpperCase(),
                                                        style: TextStyle(
                                                            fontSize: 14)),
                                                  ],
                                                ),
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Colors.blue),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5)),
                                                          side: BorderSide(
                                                              color: Color(
                                                                  0xFF4CE5B1))),
                                                    )),
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "By clicking signup you agree to our Terms and Condition",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          width: double.infinity,
                                          child: Text(
                                            "Login with your phone number ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff707070),
                                            ),
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      MyHomePage(),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextFormField(
                                        cursorColor: Colors.black,
                                        decoration: new InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 15,
                                                bottom: 11,
                                                top: 11,
                                                right: 15),
                                            hintText: "Password"),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Remember me "),
                                            Text("Forget Password "),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            child: Text("Next".toUpperCase(),
                                                style: TextStyle(fontSize: 14)),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color(0xFF4CE5B1)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8)),
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xFF4CE5B1))),
                                                )),
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          OtpScren()));
                                            },
                                          )),
                                    ],
                                  ),
                                )
                              ],
                              onChange: (index) => print(index),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
