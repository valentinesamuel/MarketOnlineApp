import 'package:flutter/material.dart';


class CategoriesContainer extends StatelessWidget {
  final AssetImage picture;
  final String name;
  CategoriesContainer({this.picture, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 15),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                image: DecorationImage(image: picture, fit: BoxFit.cover)),
          ),
          Text(
            name,
            style: TextStyle(color: Color(0XFF474749)),
          )
        ],
      ),
    );
  }
}
