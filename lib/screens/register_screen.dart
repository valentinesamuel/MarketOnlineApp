import 'package:MarketApp/utilities/auth_input_field.dart';
import 'package:MarketApp/utilities/constants.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: KBlueColor,
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 25.0, 0, 20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    height: 120.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Getting Started',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                  ),
                  Text('Create and account to continue',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.white,
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0)),
                    margin: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Name'),
                          AuthInputField(
                            icon: Icons.person_outline,
                            placeHolder: 'Enter Your Name',
                          ),
                          SizedBox(height: 30.0),
                          Text('Email'),
                          AuthInputField(
                            icon: Icons.mail_outline,
                            placeHolder: 'Enter Your Email',
                            inputType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 30.0),
                          Text('Password'),
                          TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock_outline,
                                color: Colors.grey,
                              ),
                              hintText: 'Enter Your Password',
                              border: InputBorder.none,
                            ),
                            obscureText: true,
                          ),
                          Container(
                            color: Colors.black38,
                            height: 1.0,
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(height: 30.0),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 12.0, 0, 25.0),
                                height: 57.0,
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: KOrangeColor,
                                    borderRadius: BorderRadius.circular(18.0)),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Already have an account?  ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0)),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Sign In',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: KBlueColor,
                                              fontSize: 18.0)),
                                    ),
                                  ],
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
        ),
      ),
    );
  }
}
