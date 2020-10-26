import 'package:flutter/material.dart';


class BonusCard extends StatelessWidget {
  final AssetImage discountPic;
  final int oldAmount;
  final int newAmount;
  final  status;

  BonusCard({this.discountPic, this.newAmount, this.oldAmount, this.status});
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xffFFC8BD),
              borderRadius: BorderRadius.circular(23)),
        ),
        Positioned(
          left: 4,
          top: 8,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: discountPic)),
          ),
        ),
        Positioned(
          top: 40,
          left: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Mega",
                  style: TextStyle(
                      color: Colors.red, fontFamily: "Poppins", fontSize: 16)),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Whopp'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontFamily: "Poppins.")),
                    TextSpan(
                        text: 'e'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontFamily: "Poppins.Bold")),
                    TextSpan(
                        text: 'r'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontFamily: "Poppins.Bold")),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Text("\$$newAmount",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 18)),
                  SizedBox(width: 80),
                  Text("\$$oldAmount",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 12),
              Text(
                "* $status",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
