import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Positioned(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.green, Colors.black])))),
        Stack(children: [
          Positioned(
            top: 70,
            right: 100,
            child: Image(image: AssetImage("assets/pic3.png")),
          ),
        ]),
        Stack(children: [
          Positioned(
              top: 330,
              right: 120,
              child: Text(
                "Refund",
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
              right: 40,
              left: 40,
              child: Text(
                "  Cancel your booking anytime and get a"
                "\nrefund at absolutely no cost. ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  //  fontWeight: FontWeight.bold,
                ),
              ))
        ])
      ])),
    );
  }
}
