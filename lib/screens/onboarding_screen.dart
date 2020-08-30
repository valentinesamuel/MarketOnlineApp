import 'package:MarketApp/utilities/constants.dart';
import 'package:MarketApp/utilities/indicator.dart';
import 'package:MarketApp/utilities/onboarding_container.dart';
import 'package:flutter/material.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  onChangedFunction(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            PageView(
              onPageChanged: onChangedFunction,
              controller: pageController,
              children: <Widget>[
                OnboardingContainer(
                  text: 'Browse and order all products at anytime',
                  imageDirectory: 'assets/images/page1.png',
                ),
                OnboardingContainer(
                  text: 'Your Package is in our safe hands',
                  imageDirectory: 'assets/images/page2.png',
                ),
                OnboardingContainer(
                  text: 'Committed To Delivering On Time',
                  imageDirectory: 'assets/images/page3.png',
                ),
                OnboardingContainer(
                  text: '24/7 Fast and Safe Delivery',
                  imageDirectory: 'assets/images/page4.png',
                ),
                OnboardingContainer(
                  text: 'You Can Order Anytime at Online Market',
                  imageDirectory: 'assets/images/page5.png',
                ),
                OnboardingContainer(
                  text: 'You can Pay Quickly With QR Code',
                  imageDirectory: 'assets/images/page6.png',
                ),
                OnboardingContainer(
                  text: 'Track Your Delivery in Real Time',
                  imageDirectory: 'assets/images/page7.png',
                ),
                OnboardingContainer(
                  text: 'It All Happens Faster Than You Can Think',
                  imageDirectory: 'assets/images/page8.png',
                ),
              ],
            ),
            Positioned(
              bottom: 140,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Indicator(
                    positionIndex: 0,
                    currentIndex: currentPage,
                  ),
                  Indicator(
                    positionIndex: 1,
                    currentIndex: currentPage,
                  ),
                  Indicator(
                    positionIndex: 2,
                    currentIndex: currentPage,
                  ),
                  Indicator(
                    positionIndex: 3,
                    currentIndex: currentPage,
                  ),
                  Indicator(
                    positionIndex: 4,
                    currentIndex: currentPage,
                  ),
                  Indicator(
                    positionIndex: 5,
                    currentIndex: currentPage,
                  ),
                  Indicator(
                    positionIndex: 6,
                    currentIndex: currentPage,
                  ),
                  Indicator(
                    positionIndex: 7,
                    currentIndex: currentPage,
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 65.0,
                left: 30.0,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Poppins',
                  ),
                )),
            Positioned(
              bottom: 50.0,
              right: 30.0,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,
                      color: Colors.white),
                ),
                color: KOrangeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(31.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
