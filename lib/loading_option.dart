import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/unloading.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LoadingOption extends StatefulWidget {
  const LoadingOption({Key? key}) : super(key: key);

  @override
  _LoadingOptionState createState() => _LoadingOptionState();
}

class _LoadingOptionState extends State<LoadingOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 300,
        panelBuilder: (ScrollController sc) => _scrollingList(sc),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(15),
          child: GFButton(
            size: 60,
            color: Color(0xFF4CE5B1),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UnLoadingOption()),
              );
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 25),
            ),
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
        ),
      ),
    );
  }
}

Widget _scrollingList(ScrollController sc) {
  return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
            color: Colors.black,
            size: 45,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Select Loading Options",
          style: TextStyle(
            color: Color(0xFF4CE5B1),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Container(
              child: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage("assets/truk.png"),
                    shape: GFAvatarShape.square,
                    size: 40,
                  ),
                  titleText: 'Labor',
                  subTitleText: 'Rs 1000 per hour/Minimum',
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFF4CE5B1),
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFF4CE5B1),
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.minimize),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              color: Color(0xFF4CE5B1),
              child: GFListTile(
                  avatar: GFAvatar(
                    foregroundColor: Color(0xFF4CE5B1),
                    backgroundImage: AssetImage(
                      "assets/Path.png",
                    ),
                    shape: GFAvatarShape.square,
                  ),
                  title: Text(
                    "Crane",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Text(
                    "Rs 1000 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Column(
                                children: [
                                  Center(child: Icon(Icons.minimize)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 1000 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              color: Color(0xFF4CE5B1),
              child: GFListTile(
                  avatar: GFAvatar(
                    foregroundColor: Color(0xFF4CE5B1),
                    backgroundImage: AssetImage(
                      "assets/Path.png",
                    ),
                    shape: GFAvatarShape.square,
                  ),
                  title: Text(
                    "Crane",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Text(
                    "Rs 1000 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Column(
                                children: [
                                  Center(child: Icon(Icons.minimize)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 1000 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              color: Color(0xFF4CE5B1),
              child: GFListTile(
                  avatar: GFAvatar(
                    foregroundColor: Color(0xFF4CE5B1),
                    backgroundImage: AssetImage(
                      "assets/Path.png",
                    ),
                    shape: GFAvatarShape.square,
                  ),
                  title: Text(
                    "Crane",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Text(
                    "Rs 1000 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Column(
                                children: [
                                  Center(child: Icon(Icons.minimize)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 1000 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage("assets/truk.png"),
                    shape: GFAvatarShape.square,
                    size: 40,
                  ),
                  titleText: 'Labor',
                  subTitleText: 'Rs 1000 per hour/Minimum',
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFF4CE5B1),
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                  color: Color(0xFF4CE5B1),
                                  borderRadius: new BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.minimize),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  )),
            ),
          ],
        )),
      ));
}
