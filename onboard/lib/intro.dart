import 'package:flutter/material.dart';
import 'package:onboard/page1.dart';
import 'package:onboard/page2.dart';
import 'package:onboard/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Container(
              alignment: Alignment(0.49, 0.80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // GestureDetector(
                  //     onTap: () {
                  //       _controller.nextPage(
                  //         duration: Duration(milliseconds: 500),
                  //         curve: Curves.ease,
                  //       );
                  //     },
                  //     child: Text('skip')),
                  SmoothPageIndicator(
                      controller: _controller, // PageController
                      count: 3,
                      effect: WormEffect(
                        dotColor: Colors.white,
                        activeDotColor: Colors.green,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                  // GestureDetector(
                  //     onTap: () {
                  //       _controller.nextPage(
                  //         duration: Duration(milliseconds: 500),
                  //         curve: Curves.ease,
                  //       );
                  //     },
                  //     child: Text('next')),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 600),
            child: Container(
              // alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        child: Text(
                          'skip',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[900],
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
