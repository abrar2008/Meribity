import 'package:flutter/material.dart';
import 'package:meribilty/SignIn.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 100,
            ),
            Container(
              child: Image.asset("assets/home1.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "Hi, nice  to  meet  you!",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "Choose your location to start finding \n       you perfect logistic vendor",
                style: TextStyle(fontSize: 15, color: Color(0xffC8C7CC)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    side: BorderSide(width: 2.0, color: Color(0xFF4CE5B1)),
                  ),
                  onPressed: () {},
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          // Image.asset("assets/Path.png"),
                          SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Use current location ',
                            style: TextStyle(
                              color: Color(0xFF4CE5B1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    side: BorderSide(width: 2.0, color: Color(0xFF4CE5B1)),
                  ),
                  onPressed: () {},
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Select it manually ',
                            style: TextStyle(
                                color: Color(0xFF4CE5B1), fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
