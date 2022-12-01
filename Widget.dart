import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconn(var iconn, textt, {sizee, txtsize, colorr,colorrrr}) {
  return Column(
    children: [
      Icon(
        iconn,
        color: colorr,
        size: sizee,
      ),
      Text(textt,
          style: TextStyle(
            color: colorrrr,
            fontSize: txtsize,
          ))
    ],
  );
}

Widget textt(var name, {colorr, sizee,weight}) {
  return Text(name, style: TextStyle(color: colorr, fontSize: sizee,fontWeight: weight,));
}

Widget iconbtn(var context, path, icons, {sizee, colorr}) {
  return Column(
    children: [
      IconButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => path));
        },
        icon: Icon(icons),
        color: colorr,
        iconSize: sizee,
      ),
    ],
  );
}

Widget count(var text1, text2, text3, text4, text5, {colorr}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Text(
            text1,
            style: TextStyle(),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Text(
            text2,
            style: TextStyle(),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Text(
            text3,
            style: TextStyle(color: colorr),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Text(
            text4,
            style: TextStyle(),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Text(
            text5,
            style: TextStyle(),
          ),
        ),
      )
    ],
  );
}

Widget circle(var colorr) {
  return Container(
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: colorr,
      ),
    ),
  );
}

Widget imgnow(context) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 1, left: 40),
        child: Text(
          "MY BANK",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 80, left: 90),
        child: Text(
          "Abdul mannan",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 100, left: 90),
        child: Text(
          "Itsme@gmail.com",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: CircleAvatar(
          radius: 40.0,
          backgroundImage: NetworkImage(
              "https://tse1.mm.bing.net/th?id=OIP.DehJRV6LJqhu0gx-3lSd4AHaHa&pid=Api&P=0"),
        ),
      ),
      Positioned(
          right: 20.0,
          bottom: 20.0,
          child: Padding(
            padding: EdgeInsets.only(top: 10, right: 175),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (Builder) => bottomsheet(context));
              },
              child: Icon(
                CupertinoIcons.camera_circle_fill,
                size: 30,
                color: Colors.purple,
              ),
            ),
          ))
    ],
  );
}

Widget bottomsheet(context) {
  return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 20,
    ),
    child: Column(
      children: [
        Text(
          "Choose profile photo",
          style: TextStyle(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera),
                label: Text("Camera")),

            // flated button 2

            FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.image),
                label: Text("Gallery"))
          ],
        )
      ],
    ),
  );
}
