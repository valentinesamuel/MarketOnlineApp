import 'package:MarketApp/utilities/constants.dart';
import 'package:MarketApp/utilities/sign_in_out_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBlueColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 57.0, 0, 20),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 120.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Let\'s Sign You In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
              ),
              Text('Welcome back, you\'ve been missed',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.white,
                  )),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0)),
                margin: EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 55.0, 15.0, 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Username or E-Mail'),
                      AuthInputField(
                        icon: Icons.person_outline,
                        placeHolder: 'Your Email Here',
                        inputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20.0),
                      Text('Password'),
                      AuthInputField(
                        icon: Icons.lock_outline,
                        placeHolder: 'Your password Here',
                        
                        
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              {
                                print('I don forget my passeord o');
                              }
                            },
                            child: Text(
                              'Forgot Password?',
                              style:
                                  TextStyle(color: KBlueColor, fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              print('This is working');
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 30.0, 0, 35.0),
                              height: 57.0,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: KOrangeColor,
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 15.0,
                                color: KBlueColor,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Don\'t have an account yet?  ',
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: 'Sign Up',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
