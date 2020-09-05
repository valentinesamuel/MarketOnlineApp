import 'package:flutter/material.dart';

class AuthInputField extends StatelessWidget {
  final IconData icon;
  final String placeHolder;
  final TextInputType inputType;

  AuthInputField({
    this.icon,
    this.placeHolder,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: inputType,
          decoration: InputDecoration(
            icon: Icon(
              icon,
              size: 40.0,
              color: Colors.grey,
            ),
            hintText: placeHolder,
            border: InputBorder.none,
          ),
        ),
        Container(
          color: Colors.black38,
          height: 1.0,
        ),
      ],
    );
  }
}
