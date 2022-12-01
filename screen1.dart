import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hblapp1/Add_Money.dart';
import 'package:hblapp1/Widget.dart';
import 'package:hblapp1/more.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
                Icons.door_sliding_outlined,
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
              height: 50,
              width: 390,
              color: Colors.blueGrey,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 100,
              ),
              child: Text(
                "Welcome, Abdul Mannan",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 40),
              height: 100,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 2)],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 60, left: 18),
                child: iconbtn(
                  context,
                  AddMoney(),
                  CupertinoIcons.money_dollar_circle_fill,
                  sizee: 25,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                )),
            Padding(
              padding: EdgeInsets.only(top: 92, left: 10),
              child: textt("Add Money", colorr: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 90),
              child: iconn(
                CupertinoIcons.news_solid,
                " All Payments",colorrrr: Colors.grey,
                colorr: Color.fromARGB(255, 225, 138, 8),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 70, left: 180),
              child: iconn(
                Icons.phone_iphone_sharp,
                "Mobile packgaes",colorrrr: Colors.grey,
                colorr: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 60, left: 290),
                child: iconbtn(
                  context,
                  MoreData(),
                  Icons.more_horiz,
                  sizee: 40,
                  colorr: Color.fromARGB(255, 225, 138, 8),
                )),
            Padding(
              padding: EdgeInsets.only(top: 95, left: 300),
              child: textt("more", colorr: Colors.grey),
            ),
            Container(
              margin: EdgeInsets.only(top: 200, left: 20),
              child: Text(
                "What i have",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200, left: 280),
              child: Icon(
                CupertinoIcons.lock_open_fill,
                color: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200, left: 320),
              child: Text(
                "PKR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 280, left: 10),
              child: Icon(
                CupertinoIcons.star_fill,
                color: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 280, left: 50),
              child: Text(
                "Deposite Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 310, left: 60),
              child: textt(
                "Your name",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 60),
              child: textt(
                "012-345-6789",
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 400, left: 100),
              child: Text(
                "100,000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromARGB(255, 225, 138, 8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 445, right: 40),
              child: Divider(
                color: Colors.blueGrey,
                thickness: 3,
                indent: 140,
                endIndent: 140,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 460, left: 100),
              child: textt("Available balance"),
            ),

            //  bottom icons

            Padding(
              padding: const EdgeInsets.only(top: 800, left: 20),
              child: iconn(
                Icons.qr_code,
                "Scan to play",
                sizee: 40,
                txtsize: 10,
                colorr: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 800, left: 110),
              child: iconn(
                CupertinoIcons.suit_heart_fill,
                "Health",
                sizee: 40,
                txtsize: 10,
                colorr: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 800, left: 210),
              child: iconn(
                Icons.point_of_sale_outlined,
                "Reset id",
                sizee: 40,
                txtsize: 10,
                colorr: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 800, left: 280),
              child: iconn(
                CupertinoIcons.house_fill,
                "Home service",
                sizee: 40,
                txtsize: 10,
                colorr: Color.fromARGB(255, 225, 138, 8),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
