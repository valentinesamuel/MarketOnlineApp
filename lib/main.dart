import './utilities/bottomNavBar.dart';
import 'package:flutter/material.dart';

import 'utilities/info_tab_store_screen.dart';

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
                      Container(
                        child: Center(
                          child: Text('Display Tab 2',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
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
