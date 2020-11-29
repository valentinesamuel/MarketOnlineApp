import '../utilities/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double margin = 30;
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffCB6D80),
        body: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Hero(
                      tag: 'main',
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/food/strawberry-nobg.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deals of the week",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text("Fresh Strawberry",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 20)),
                        Text("Milkshakes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23)),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                          ],
                        ),
                        Text("125 Votes"),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(35.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Padding(
                          padding: EdgeInsets.only(left: margin),
                          child: Text(
                            "Materials",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 16.0, left: margin),
                          child: Text(
                            "Ice cream, heavy cream, milk, vanilla and strawberries in a large container.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: margin),
                          child: Text(
                            "Instructions",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 16.0, left: margin),
                          child: Text(
                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0, left: margin),
                          child: Text(
                            "Descriptions",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: margin),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/food/ice-cream.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(23)),
                                  ),
                                  Text('4 Pieces')
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/food/ice-cream.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(23)),
                                  ),
                                  Text('Calories')
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0, left: margin),
                          child: Text('Quantity',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, left: margin),
                          child: Row(
                            children: [
                              Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: FaIcon(FontAwesomeIcons.minus,
                                        color: Colors.lightBlue),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12))),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text('3'),
                              ),
                              Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: FaIcon(FontAwesomeIcons.plus,
                                        color: Colors.lightBlue),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                BottomNavBar(
                  textContent: 'purchase',
                )
              ],
            ),
            Positioned(
              top: 180,
              right: 0,
              child: Container(
                height: 52,
                width: 262,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffB23F56),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(17.0),
                    bottomLeft: Radius.circular(17.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('\$12.5',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22)),
                    Text('\$19.5',
                        style: TextStyle(
                            color: Color(0xffD08B98),
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w500,
                            fontSize: 22))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
