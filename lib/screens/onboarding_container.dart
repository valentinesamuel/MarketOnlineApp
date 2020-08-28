import 'package:flutter/material.dart';

class OnboardingContainer extends StatelessWidget {
  final String text;
  final String imageDirectory;

  OnboardingContainer({this.text, this.imageDirectory});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 80.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Color(0xff2B2A2A),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            Image(image: AssetImage(imageDirectory)),
          ],
        ));
  }
}
