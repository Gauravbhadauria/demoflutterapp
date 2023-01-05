import 'package:demoflutterapp/src/home_page.dart';
import 'package:demoflutterapp/src/intro_pages/intro_page1.dart';
import 'package:demoflutterapp/src/intro_pages/intro_page2.dart';
import 'package:demoflutterapp/src/intro_pages/intro_page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _nameState();
}

class _nameState extends State<WelcomeScreen> {
  PageController _pageController = PageController();
  bool onLastPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              onLastPage=(value==2);
            });
          },
          children: [IntroPage1(), IntroPage2(), IntroPage3()],
        ),
        Container(
          alignment: Alignment(0, 0.8),
         
          child: Row(
             mainAxisAlignment : MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector( child: Text('Skip'),onTap: () {
               //   _pageController.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                 _pageController.jumpToPage(2);
              }),
            
              SmoothPageIndicator(controller: _pageController, count: 3),
              onLastPage?
               GestureDetector( child: Text('Done'),onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              }): GestureDetector( child: Text('Next'),onTap: () {
                _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              }),
            ],
          ),
        )
      ],
    ));
  }
}
