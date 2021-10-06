import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:meribilty/loading_option.dart';
import 'package:meribilty/selectvehicle.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:getwidget/getwidget.dart';

class Loadingselect extends StatefulWidget {
  const Loadingselect({Key? key}) : super(key: key);

  @override
  _LoadingselectState createState() => _LoadingselectState();
}

class _LoadingselectState extends State<Loadingselect> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    final kInitialPosition = LatLng(-33.8567844, 151.213108);
    PickResult selectedPlace;
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 300,
        panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
        body: Container(
            child: PlacePicker(
          apiKey: "AIzaSyDHo2tJrP5bwgbYzvJkmXpttE0S09ZUQpY",
          initialPosition: kInitialPosition,
          useCurrentLocation: true,
          selectInitialPosition: true,

          //usePlaceDetailSearch: true,
          onPlacePicked: (result) {
            selectedPlace = result;
            Navigator.of(context).pop();
            setState(() {});
          },
          //forceSearchOnZoomChanged: true,
          //automaticallyImplyAppBarLeading: false,
          //autocompleteLanguage: "ko",
          //region: 'au',
          //selectInitialPosition: true,
          // selectedPlaceWidgetBuilder: (_, selectedPlace, state, isSearchBarFocused) {
          //   print("state: $state, isSearchBarFocused: $isSearchBarFocused");
          //   return isSearchBarFocused
          //       ? Container()
          //       : FloatingCard(
          //           bottomPosition: 0.0, // MediaQuery.of(context) will cause rebuild. See MediaQuery document for the information.
          //           leftPosition: 0.0,
          //           rightPosition: 0.0,
          //           width: 500,
          //           borderRadius: BorderRadius.circular(12.0),
          //           child: state == SearchingState.Searching
          //               ? Center(child: CircularProgressIndicator())
          //               : RaisedButton(
          //                   child: Text("Pick Here"),
          //                   onPressed: () {
          //                     // IMPORTANT: You MUST manage selectedPlace data yourself as using this build will not invoke onPlacePicker as
          //                     //            this will override default 'Select here' Button.
          //                     print("do something with [selectedPlace] data");
          //                     Navigator.of(context).pop();
          //                   },
          //                 ),
          //         );
          // },
          // pinBuilder: (context, state) {
          //   if (state == PinState.Idle) {
          //     return Icon(Icons.favorite_border);
          //   } else {
          //     return Icon(Icons.favorite);
          //   }
          // },
        )),
      ),
    );
  }
}

Widget _scrollingList(ScrollController sc, BuildContext context) {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  void toggleSwitch(bool value) {
    print("object");
  }

  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      "     Use Wallet ",
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Balance",
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.white10,
                    inactiveTrackColor: Colors.black12,
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      "Rs  :350",
                      style: TextStyle(
                        color: Colors.green[600],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      "ESTIMATED FARE",
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      "Rs  3528 - 3644",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
        ),
        GFButton(
          size: 60,
          color: Colors.green,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectVehicle()),
            );
          },
          text: "Select Vehicle ",
          type: GFButtonType.solid,
          blockButton: true,
        ),
        SizedBox(
          height: 20,
        ),
        GFButton(
          size: 60,
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoadingOption()),
            );
          },
          text: "Need help in loading & unloading? ",
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Do you want to insure you cargo "),
              Container(
                decoration: new BoxDecoration(
                    color: Color(0xFF4CE5B1),
                    borderRadius: new BorderRadius.circular(10)),
                height: 30,
                width: 50,
                child: Checkbox(
                  value: true,
                  onChanged: null,
                  focusColor: Color(0xFF4CE5B1),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: GFButton(
            color: Colors.white,
            textColor: Colors.black,
            size: 60,
            onPressed: () {},
            text: "Enter Cargo Value ",
            type: GFButtonType.solid,
            fullWidthButton: true,
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                child: GFButton(
                  color: Colors.white,
                  textColor: Colors.black,
                  size: 50,
                  onPressed: () {},
                  text: "SCHEDULE",
                  type: GFButtonType.solid,
                  borderSide: BorderSide(color: Color(0xFF4CE5B1), width: 2),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 270,
                child: GFButton(
                  color: Color(0xFF4CE5B1),
                  textColor: Colors.black,
                  size: 60,
                  onPressed: () {},
                  text: "BOOK NOW",
                  type: GFButtonType.solid,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
