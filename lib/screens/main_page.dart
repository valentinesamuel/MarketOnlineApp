import 'package:MarketApp/screens/productScreen.dart';

import '../utilities/bonusdeals.dart';
import '../utilities/categories%20row.dart';
import '../utilities/deals_Cart.dart';
import '../utilities/list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffEF6A62)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              "Oxford Street",
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/potrait.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE1E1E1),
                      borderRadius: BorderRadius.circular(11.0),
                      border: Border.all(color: Colors.black12, width: 2.0)),
                  child: TextField(
                    minLines: 1,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        suffixIcon: Icon(Icons.mic, color: Colors.black),
                        hintText: "Search",
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            border: Border.all(color: Color(0xffE1E1E1))),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                              child: Image(
                                image: AssetImage("assets/images/mapa.png"),
                                height: 54,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 8,
                                  right: 15,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Home Address\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Poppins")),
                                      TextSpan(
                                          text: 'Oxford St. No:2\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins")),
                                      TextSpan(
                                          text: 'Street 12',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins")),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            border: Border.all(color: Color(0xffE1E1E1))),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 8, bottom: 8),
                              child: Image(
                                image: AssetImage("assets/images/mapa.png"),
                                height: 54,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 8, right: 15),
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Office Address\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Poppins")),
                                      TextSpan(
                                          text: 'Eye St No:2456\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins")),
                                      TextSpan(
                                          text: 'Street 12',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins")),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Explore by Category",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All (14)",
                      style: TextStyle(
                          fontFamily: "Poppins", color: Color(0xffC0BCB9)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),

                //
                //
                //
                child: CategoriesRow(),
                //
                //
                //
                //
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Deals of the day",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dealDetails.length,
                    itemBuilder: (context, index) => Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()),
                          );
                        },
                        child: DealsCard(
                            dealTitle: dealDetails[index].dealName,
                            foodPic: dealDetails[index].picture,
                            eta: dealDetails[index].estimatedTime,
                            currentPrice: dealDetails[index].currentPrice,
                            oldPrice: dealDetails[index].oldPrice,
                            quantity: dealDetails[index].quantity),
                      ),
                    ),
                  ),
                ),
              ),
              BonusCard(
                discountPic: AssetImage('assets/food/hamburger.png'),
                newAmount: 23,
                oldAmount: 24,
                status: 'Available',
              ),

              SizedBox(height: 12),
              // ! This is where the column ends
              Hero(
                tag: 'main',
                child: Material(
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.store,
                              color: Color(0xff949494),
                            ),
                            Text('Grocery')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.bell,
                              color: Color(0xff949494),
                            ),
                            Text('News')
                          ],
                        ),
                        Stack(overflow: Overflow.visible, children: [
                          Positioned(
                            top: -20,
                            left: -30,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                  child: FaIcon(
                                FontAwesomeIcons.shoppingCart,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          Column()
                        ]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.heart,
                              color: Color(0xff949494),
                            ),
                            Text('Favorites')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.wallet,
                              color: Color(0xff949494),
                            ),
                            Text('Wallet')
                          ],
                        )
                      ],
                    ),
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
