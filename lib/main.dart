import 'package:MarketApp/utilities/categories%20row.dart';
import 'package:MarketApp/utilities/deals_Cart.dart';
import 'package:MarketApp/utilities/list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:MarketApp/utilities/constants.dart';

void main() {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: KLightOrangeColor),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffE1E1E1),
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(color: Colors.black, width: 2.0)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic),
                      hintText: "Rgn",
                      border: InputBorder.none),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      border: Border.all(color: Color(0xffE1E1E1))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image(
                          image: AssetImage("assets/images/mapa.png"),
                          height: 54,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Text(
                          "Home Address\nOxford St. No:2\nStreet x12",
                          style: TextStyle(height: 1.5),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      border: Border.all(color: Color(0xffE1E1E1))),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image(
                          image: AssetImage("assets/images/mapa.png"),
                          height: 54,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Text(
                          "Home Address\nOxford St. No:2\nStreet x12",
                          style: TextStyle(height: 1.5),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Explore by Category",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                  ),
                ),
                Text(
                  "See All (14)",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Color(0xffe1e1e1)),
                ),
              ],
            ),
            SizedBox(height: 10),
            CategoriesRow(),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Deals of the day",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dealDetails.length,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      DealsCard(
                          dealTitle: dealDetails[index].dealName,
                          foodPic: dealDetails[index].picture,
                          eta: dealDetails[index].estimatedTime,
                          currentPrice: dealDetails[index].currentPrice,
                          oldPrice: dealDetails[index].oldPrice,
                          quantity: dealDetails[index].quantity),
                    ],
                  ),
                ),
              ),
            ),

            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(23)),
                ),
                Positioned(
                  left: 16,
                  top: -15,
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/food/hamburger.png"))),
                  ),
                ),
                Positioned(
                  left: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mega"),
                      Text("Whopper"),
                      Row(
                        children: [
                          Text("\$17"),
                          Text("\$32",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                              )),
                        ],
                      ),
                      Text("* Available until 24 July, 2020"),
                    ],
                  ),
                )
              ],
            ),
            // ! This is where the column ends
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.grey,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.store,
                            color: Colors.white,
                          ),
                          Text('Grocery')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bell,
                            color: Colors.white,
                          ),
                          Text('News')
                        ],
                      ),
                      Container(
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                          ),
                          Text('Favorites')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.wallet,
                            color: Colors.white,
                          ),
                          Text('Wallet')
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
