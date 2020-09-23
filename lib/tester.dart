import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  runApp(MaterialApp(
    home: OTPVerifyScreen(),
  ));
}

class OTPVerifyScreen extends StatefulWidget {
  @override
  _OTPVerifyScreenState createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: PinCodeTextFiel
          appContext: context,
  length: 4,
  obsecureText: false,
  animationType: AnimationType.fade,
  pinTheme: PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
   
  ),
  animationDuration: Duration(milliseconds: 300),
  backgroundColor: Colors.blue.shade50,
  enableActiveFill: true,
 
  onCompleted: (v) {
    print("Completed");
  },
  onChanged: (value) {
    print(value);
    
  },
  beforeTextPaste: (text) {
    print("Allowing to paste $text");
    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
    //but you can show anything you want here, like your pop up saying wrong paste format or etc
    return true;
  },
)
      ),
    );
  }
}
