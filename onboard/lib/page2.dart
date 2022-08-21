import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                        colors: [Colors.green, Colors.black])),
              ),
            ),
            Stack(children: [
              Positioned(
                top: 60,
                right: 100,
                child: Image(image: AssetImage("assets/pic2.png")),
              ),
            ]),
            Stack(children: [
              Positioned(
                  top: 330,
                  right: 60,
                  child: Text(
                    "Track Your Train",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ]),
            Stack(children: [
              Positioned(
                  top: 420,
                  right: 50,
                  left: 50,
                  child: Text(
                    "  Find out where you are at any point in "
                    "\n your trip. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      //  fontWeight: FontWeight.bold,
                    ),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
