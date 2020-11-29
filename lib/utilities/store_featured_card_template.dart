import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StoreFeaturedCard extends StatelessWidget {
  final String name;
  final String color;
  final String type;
  final bgColor;
  final AssetImage pic;
  final RatingBar rating;
  final int votesNumber;
  final RatingBar rater;

  StoreFeaturedCard(
      {this.name,
      this.color,
      this.pic,
      this.bgColor,
      this.rating,
      this.type,
      this.votesNumber,
      this.rater});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 150,
      margin: EdgeInsets.only(bottom: 25, right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: bgColor,
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Column(
            children: [
              rater,
              Text(name),
              Text(color),
              Text(type),
              Text(votesNumber.toString()),
            ],
          ),
          Positioned(
            top: 50,
            right: -40,
            child: Container(
              height: 160,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(image: pic, fit: BoxFit.cover)),
            ),
          ),
          Positioned(top: 180, right: -20, child: Text(name)),
          Positioned(
            right: -20,
            bottom: -20,
            child: FloatingActionButton(onPressed: () => {}, elevation: 0,child: Icon(Icons.add),)
          ),
        ],
      ),
    );
  }
}
