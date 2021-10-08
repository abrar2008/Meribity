import 'package:flutter/material.dart';
import 'package:meribilty/MainProfile.dart';
import 'package:meribilty/language.dart';
import 'package:meribilty/onbounding.dart';

class Timewait extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TimewaitState();
  }
}

class TimewaitState extends State<Timewait> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 15), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainProfile()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Color(0xff4CE5B1),
              image: new DecorationImage(
                  image: new AssetImage('assets/loading.png'),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
