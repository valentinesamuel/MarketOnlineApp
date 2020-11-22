import 'package:MarketApp/utilities/list.dart';

import './utilities/bottomNavBar.dart';
import 'package:flutter/material.dart';
import './utilities/list.dart';
import 'utilities/info_tab_store_screen.dart';
import 'utilities/store_featured_card_template.dart';

void main() {
  runApp(MaterialApp(home: StorePage()));
}

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

int number;
filler(number) {
  number = number;
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/food/aimerlecafe.jpg'),
                    fit: BoxFit.cover)),
          ),
          DefaultTabController(
            length: 3, // length of tabs
            initialIndex: 0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    color: Color(0xff6C121C),
                    child: TabBar(
                      unselectedLabelColor: Colors.white,
                      indicator: BoxDecoration(color: Color(0xffA36E6E)),
                      tabs: [
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Info"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Menu"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Reviews",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.63, //height of TabBarView
                    decoration: BoxDecoration(color: Colors.white),

                    child: TabBarView(children: <Widget>[
                      InfoTabStoreScreen(),
                      //This is where the menu tab starts from
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: double.infinity,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: foodCategories.length,
                                itemBuilder: (context, int index) {
                                  return Container(
                                    height: 30,
                                    width: 120,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                    child: Center(
                                        child: Text(
                                      foodCategories[index],
                                      style: TextStyle(color: Colors.blue[900]),
                                    )),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xffCDEEFB),
                                    ),
                                  );
                                }),
                          ),
                          Text('Featured'),

                          //Listview
                          //Listview
                          //Listview

                          Container(
                            height: 300,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: storeFeaturedItems.length,
                              itemBuilder: (context, index) =>
                                  StoreFeaturedCard(
                                rater: storeFeaturedItems[index].starRating,
                                name: storeFeaturedItems[index].itemName,
                                color: storeFeaturedItems[index].color,
                                pic: storeFeaturedItems[index].picture,
                                rating: storeFeaturedItems[index].starRating,
                                type: storeFeaturedItems[index].typeName,
                                bgColor: storeFeaturedItems[index].bgColor,
                                votesNumber:
                                    storeFeaturedItems[index].numberofVotes,
                              ),
                            ),
                          ),
                          Text('data')

                          //Lisfrb
                          //Lisfrb
                          //Lisfrb
                        ],
                      ),
                      //This is where the menu tab ends
                      Container(
                        child: Center(
                          child: Text('Display Tab 3',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                  ),
                ]),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
