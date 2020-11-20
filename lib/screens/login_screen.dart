import '../screens/register_screen.dart';
import '../utilities/constants.dart';
import '../utilities/auth_input_field.dart';
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
                padding: EdgeInsets.fromLTRB(0, 30.0, 0, 20),
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
                margin: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 55.0, 15.0, 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Username or E-Mail'),
                      ),
                      AuthInputField(
                        icon: Icons.person_outline,
                        placeHolder: 'Your Email Here',
                        inputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Password'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock_outline,
                            size: 40.0,
                            color: Colors.grey,
                          ),
                          hintText: 'Enter Your Password here',
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                      Container(
                        color: Colors.black38,
                        height: 1.0,
                      ),
                      SizedBox(height: 10.0),
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
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                print(
                                    'Congratulations,you have successfully signed ins');
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
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Don\'t have an account?  ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18.0)),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()),
                                  );
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: KBlueColor,
                                      fontSize: 18.0),
                                ),
                              ),
                            ],
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
