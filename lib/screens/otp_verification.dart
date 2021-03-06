import '../utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OTPVerifyScreen extends StatefulWidget {
  @override
  _OTPVerifyScreenState createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBlueColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              Text(
                "Getting Started",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    fontFamily: 'Poppins',
                    color: Colors.white),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0),
                  child: Text(
                    'Enter Your Phone Number with which an OTP will be sent to you.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0)),
                margin: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Enter Your OTP Code Here",
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      PinCodeTextField(
                          appContext: context,
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          length: 4,
                          onCompleted: (value) => print(value),
                          onChanged: null),
                      Column(
                        // Enter the OTP widget here
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => print("Tapped Me..Ouchy"),
                                                      child: Container(
                              margin: EdgeInsets.fromLTRB(0, 12.0, 0, 25.0),
                              height: 57.0,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: KOrangeColor,
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}