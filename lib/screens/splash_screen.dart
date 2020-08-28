import 'package:flutter/material.dart';



class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xff0274BC),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 200.0,
                width: 200.0,
              ),
              Text('Online Market',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 20.0,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
