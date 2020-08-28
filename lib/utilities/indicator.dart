import 'package:flutter/material.dart';


class Indicator extends StatelessWidget {
 final int positionIndex;
 final int currentIndex;

Indicator({@required this.positionIndex, @required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: 9.0,
        width: positionIndex == currentIndex ? 33.0 : 9.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: positionIndex == currentIndex ? Color(0xffFD8700) : Color(0xffD4D4D4),
        ),
      ),
    );
  }
}
