import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Darwe extends StatefulWidget {
  const Darwe({Key? key}) : super(key: key);

  @override
  _DarweState createState() => _DarweState();
}

class _DarweState extends State<Darwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GFDrawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              GFDrawerHeader(
                currentAccountPicture: GFAvatar(
                  radius: 80.0,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
                ),
                otherAccountsPictures: <Widget>[
                  Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                    fit: BoxFit.cover,
                  ),
                ],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Larry Davis',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GFButton(
                          color: Colors.white,
                          textColor: Colors.black,
                          onPressed: () {},
                          text: "",
                          child: Row(
                            children: [
                              Text(
                                "Cash ",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text("Cash "),
                            ],
                          ),
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          "assets/Noti.png",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset("assets/mes.png"),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet_sharp),
                title: Text('My Wallet '),
              ),
              ListTile(
                leading: Icon(Icons.access_time_outlined),
                title: Text('My Deliveries'),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet_sharp),
                title: Text('Team /Clearing Agent'),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification'),
              ),
              ListTile(
                leading: Icon(Icons.chat_bubble_outline_sharp),
                title: Text('Chat'),
              ),
              ListTile(
                leading: Icon(Icons.wallet_giftcard),
                title: Text('Invite Friends'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
