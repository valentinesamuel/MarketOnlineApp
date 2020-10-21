import 'package:MarketApp/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:MarketApp/screens/otp_verification.dart';

class PhoneVerifyScreen extends StatefulWidget {
  @override
  _PhoneVerifyScreenState createState() => _PhoneVerifyScreenState();
}

class _PhoneVerifyScreenState extends State<PhoneVerifyScreen> {
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
                      Column(
                        children: <Widget>[
                          IntlPhoneField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            initialCountryCode: 'NG',
                            onSubmitted: (phone) => print("Your phone number is $phone"),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OTPVerifyScreen()),
                              );
                            },
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
