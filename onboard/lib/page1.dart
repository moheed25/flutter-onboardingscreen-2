import 'dart:ui';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.green, Colors.black]),
                ),
              ),
            ),
            Stack(children: [
              Positioned(
                top: 50,
                right: 100,
                child: Image(
                  image: AssetImage("assets/pic1.png"),
                ),
              ),
            ]),
            Stack(children: [
              Positioned(
                  top: 320,
                  right: 110,
                  child: Text(
                    "E-Ticket",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ]),
            Stack(children: [
              Positioned(
                  top: 420,
                  right: 30,
                  left: 30,
                  child: Text(
                    "   Don't worry about long queues at the "
                    "     \n       the station or losing paper. Generate"
                    "     \n            your ticket online. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      //  fontWeight: FontWeight.bold,
                    ),
                  ))
            ])
          ],
        ), // child: Image(image: AssetImage("assets/pic1.png")));
      ),
    );
  }
}
