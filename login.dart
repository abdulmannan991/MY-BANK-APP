import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hblapp1/Widget.dart';
import 'package:hblapp1/screen1.dart';
import 'package:hblapp1/signup.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 225, 138, 8),
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
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, right: 260),
              child: ListTile(
                title: CircleAvatar(
                  child: Image.asset(
                    "images/whatsapp.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 180),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color.fromARGB(255, 225, 138, 8),
                ),
                onPressed: () {},
                child: Text("view Account payment"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 140, left: 30),
              height: 340,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(blurRadius: 2)]),
              padding: EdgeInsets.all(16),
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      //email
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),

                      //password
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        obscureText: true,
                      ),

                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 160, left: 240),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot ID",
                    style: TextStyle(
                      color: Color.fromARGB(255, 7, 134, 70),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 220, left: 200),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color.fromARGB(255, 7, 134, 70),
                    ),
                  )),
            ),
            Container(
                margin: EdgeInsets.only(top: 220, left: 150),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye),
                )),
            Container(
              margin: EdgeInsets.only(top: 290, left: 50),
              child: Icon(Icons.check_box),
            ),
            Container(
              margin: EdgeInsets.only(top: 295, left: 80),
              child: Text(
                "Remember me",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              height: 50,
              width: 150,
              margin: EdgeInsets.only(top: 340, left: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  primary: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenOne()),
                  );
                },
                child: Text("LOGIN"),
              ),
            ),
            Container(
              height: 50,
              width: 150,
              margin: EdgeInsets.only(top: 340, left: 180),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  primary: Color.fromARGB(255, 225, 138, 8),
                ),
                onPressed: () {},
                child: Text("SIGN UP"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 420, left: 50),
              child: Icon(
                Icons.fingerprint_outlined,
                size: 45,
                color: Color.fromARGB(255, 7, 134, 70),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 435, left: 100),
              child: Text(
                "Biometric Login",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
