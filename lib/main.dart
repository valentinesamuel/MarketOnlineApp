import 'package:MarketApp/utilities/bottomNavBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StorePage()));
}

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
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
                              child: Text("APPS"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("MOVIES"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("GAMES"),
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
                      SingleChildScrollView(
                        padding: EdgeInsets.only(left: 12),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text('Aimer le Cafe',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_border),
                                  Icon(Icons.star_border),
                                  Icon(Icons.star_border),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text("Open now",
                                      style: TextStyle(color: Colors.green)),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "6 Place St Germain des Pres, Paris",
                                  style: TextStyle(wordSpacing: 2),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Info",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Text(
                                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or  randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                                  style:
                                      TextStyle(wordSpacing: 2, fontSize: 18)),
                              SizedBox(height: 30),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red[200],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.phone),
                                          Text("+4 232 2323 23")
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.blue[100],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.plagiarism),
                                          Text("+4 232 2323 23")
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 18),
                                child: Text(
                                  "Info",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Text(
                                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or  randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                                  style:
                                      TextStyle(wordSpacing: 2, fontSize: 18)),
                            ],
                          ),
                        ),
                      ),
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
