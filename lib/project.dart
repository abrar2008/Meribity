import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: TextField(),
            )
          ],
        ),
      ),
    );
  }
}
