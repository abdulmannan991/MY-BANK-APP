import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hblapp1/Widget.dart';
import 'package:hblapp1/screen1.dart';

class MoreData extends StatefulWidget {
  const MoreData({Key? key}) : super(key: key);

  @override
  State<MoreData> createState() => _MoreDataState();
}

class _MoreDataState extends State<MoreData> {
  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 225, 138, 8),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.house,
                  size: 35,
                ),
              )
            ],
            title: Center(
                child: Text(
              "My Bank",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: imgnow(context),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 225, 138, 8),
                  ),
                ),
                Row(
                  children: [
                    // icon 1
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.switch_account,
                        color: Color.fromARGB(255, 225, 138, 8),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: Text(
                        "Dark Mode",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 100),
                      child: Switch(
                          hoverColor: Color.fromARGB(255, 225, 138, 8),
                          activeColor: Color.fromARGB(255, 225, 138, 8),
                          value: _switch,
                          onChanged: (_newvalue) {
                            setState(() {
                              _switch = _newvalue;
                            });
                          }),
                    ),
                  ],
                ),
                // icon 2
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10),
                      child: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 225, 138, 8),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      "My Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),

                // icon 3
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Icon(
                        Icons.card_membership_outlined,
                        color: Color.fromARGB(255, 225, 138, 8),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Text(
                      "Card Managments",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                // icon 4
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Icon(
                        CupertinoIcons.person_crop_circle_badge_checkmark,
                        color: Color.fromARGB(255, 225, 138, 8),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Text(
                      "Beneficiary Managment",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                // icon 5
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Icon(
                        CupertinoIcons.paperplane_fill,
                        color: Color.fromARGB(255, 225, 138, 8),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Text(
                      "Apply",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                // icon 6
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Icon(
                        CupertinoIcons.hand_draw,
                        color: Color.fromARGB(255, 225, 138, 8),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Text(
                      "Loan Management",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                // icon 7
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Icon(
                        CupertinoIcons.globe,
                        color: Color.fromARGB(255, 225, 138, 8),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Text(
                      "Global Wallet Payment",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                // icon 8
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Icon(
                        CupertinoIcons.rectangle_dock,
                        color: Color.fromARGB(255, 225, 138, 8),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Text(
                      "Transection Activity",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ])
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Stack(children: [
              Container(
                height: 80,
                width: 390,
                color: Colors.blueGrey,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 229, 224, 224),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      hintText: "Search here",
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 1, left: 20),
                  child: iconbtn(
                      context, ScreenOne(), Icons.arrow_circle_left_outlined,
                      sizee: 40, colorr: Colors.white)),
              Container(
                margin: EdgeInsets.only(top: 20, left: 80),
                child: Text(
                  "More",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 130),
                child: Text(
                  "Mobile packgaes",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170, left: 50),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.phone_android_rounded,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230, left: 50),
                child: textt("PrePaid", sizee: 15, colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170, left: 170),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.post_add_rounded,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230, left: 170),
                child: textt("PostPaid", sizee: 15, colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170, left: 300),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.photo_camera_back_outlined,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230, left: 300),
                child: textt("Bundles", sizee: 15, colorr: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.only(top: 280),
                child: Text("Request Money",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 320, left: 50),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.phone_iphone_sharp,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380, left: 40),
                child: textt("Via QR  code", sizee: 15, colorr: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.only(top: 430),
                child: Text(" Bill Payments",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480, left: 50),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  CupertinoIcons.creditcard_fill,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 540, left: 40),
                child: textt("Credit Card", sizee: 15, colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480, left: 170),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.credit_card_sharp,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 540, left: 170),
                child: textt("Other Cards", sizee: 15, colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480, left: 300),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.electric_bike,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 540, left: 300),
                child: textt("Electricity", sizee: 15, colorr: Colors.grey),
              ),
              // next

              Padding(
                padding: const EdgeInsets.only(top: 580, left: 40),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.water_drop,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 640, left: 40),
                child: textt("Water", sizee: 15, colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 580, left: 170),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.phone_callback,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 640, left: 170),
                child: textt("LandLine", sizee: 15, colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 580, left: 300),
                child: iconbtn(
                  context,
                  ScreenOne(),
                  Icons.wifi_tethering_sharp,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                  sizee: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 640, left: 300),
                child: textt("Internet", sizee: 15, colorr: Colors.grey),
              ),
            ]),
          )),
    );
  }
}
