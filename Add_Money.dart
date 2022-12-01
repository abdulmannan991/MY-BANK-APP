import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hblapp1/Widget.dart';
import 'package:hblapp1/screen1.dart';


class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
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
              Container(
                  margin: EdgeInsets.only(top: 1, left: 10),
                  child: iconbtn(
                      context, ScreenOne(), Icons.arrow_circle_left_outlined,
                      sizee: 40, colorr: Colors.white)),
              Container(
                margin: EdgeInsets.only(top: 20, left: 60),
                child: Text(
                  "Send Money",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 1, left: 270),
                  child: iconbtn(
                      context, ScreenOne(), CupertinoIcons.question_circle,
                      sizee: 40, colorr: Colors.white)),
              Container(
                  margin: EdgeInsets.only(top: 1, left: 320),
                  child: iconbtn(context, ScreenOne(),
                      CupertinoIcons.arrow_up_arrow_down_circle_fill,
                      sizee: 40, colorr: Colors.white)),
              Padding(
                padding: EdgeInsets.only(top: 70, right: 20),
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 3,
                  indent: 30,
                  endIndent: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 90, top: 65),
                height: 25,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 130),
                child: textt("Make a money", colorr: Colors.blueGrey),
              ),
              Container(
                height: 50,
                width: 150,
                margin: EdgeInsets.only(top: 100, left: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    primary: Color.fromARGB(255, 225, 138, 8),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenOne()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("Raast ID",
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35, top: 105),
                height: 40,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
              ),
              Container(
                height: 50,
                width: 150,
                margin: EdgeInsets.only(top: 100, left: 200),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    primary: Color.fromARGB(255, 225, 138, 8),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenOne()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Text(
                      "Bank Account",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 205, top: 105),
                height: 40,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
              ),
              Container(
                  margin: EdgeInsets.only(top: 108, left: 30),
                  child: iconbtn(
                    context,
                    ScreenOne(),
                    CupertinoIcons.add_circled,
                    sizee: 20,
                    colorr: Color.fromARGB(255, 225, 138, 8),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 108, left: 200),
                  child: iconbtn(
                    context,
                    ScreenOne(),
                    CupertinoIcons.add_circled,
                    sizee: 20,
                    colorr: Color.fromARGB(255, 225, 138, 8),
                  )),
              Container(
                margin: EdgeInsets.only(top: 110, left: 73),
                child: Icon(
                  Icons.balance_outlined,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 110, left: 240),
                child: Icon(
                  Icons.stacked_bar_chart,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 229, 224, 224),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      hintText: "Search from existing beneficiary List",
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 240,
                ),
                height: 40,
                width: 390,
                color: Colors.blueGrey,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250, left: 30),
                child: textt("Other Accounts", colorr: Colors.white, sizee: 18),
              ),
              // space
              // .....
              // .....
              // list
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 100),
                child: count(
                  "Client name 1",
                  "0123456789",
                  "Client name repeat",
                  "Mobilink Bank",
                  "Payment Method",
                  colorr: Color.fromARGB(255, 225, 138, 8),
                ),
              ),
              // Circle 1
              Padding(
                  padding: EdgeInsets.only(top: 300, left: 20),
                  child: circle(Color.fromARGB(255, 218, 212, 212))),
              // text 1
              Padding(
                padding: EdgeInsets.only(top: 320, left: 45),
                child: textt("C N", colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450, left: 100),
                child: count(
                  "Client name 2",
                  "0123456789",
                  "Client name repeat",
                  "Mobilink Bank",
                  "Payment Method",
                  colorr: Color.fromARGB(255, 225, 138, 8),
                ),
              ),
              // Circle 2
              Padding(
                  padding: EdgeInsets.only(top: 450, left: 20),
                  child: circle(Color.fromARGB(255, 218, 212, 212))),
              // text 2
              Padding(
                padding: EdgeInsets.only(top: 470, left: 45),
                child: textt("C N", colorr: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 650, left: 100),
                child: count(
                  "Client name 3",
                  "0123456789",
                  "Client name repeat",
                  "Mobilink Bank",
                  "Payment Method",
                  colorr: Color.fromARGB(255, 225, 138, 8),
                ),
              ),
              // Circle 3
              Padding(
                padding: EdgeInsets.only(top: 650, left: 20),
                child: circle(Color.fromARGB(255, 218, 212, 212)),
              ),
              // text 3
              Padding(
                padding: EdgeInsets.only(top: 670, left: 45),
                child: textt("C N", colorr: Colors.grey),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 850, left: 100),
                child: count(
                  "Client name 4",
                  "0123456789",
                  "Client name repeat",
                  "Mobilink Bank",
                  "Payment Method",
                  colorr: Color.fromARGB(255, 225, 138, 8),
                ),
              ),
              // Circle 4
              Padding(
                padding: EdgeInsets.only(top: 850, left: 20),
                child: circle(Color.fromARGB(255, 218, 212, 212)),
              ),
              // text 4
              Padding(
                padding: EdgeInsets.only(top: 870, left: 45),
                child: textt("C N", colorr: Colors.grey),
              ),
            ]),
          )),
    );
  }
}
