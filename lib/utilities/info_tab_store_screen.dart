import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoTabStoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 12),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text('Aimer le Cafe',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                RatingBar(
                  initialRating: 2,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 30,
                  ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: Color(0xffFFD25D),
                    ),
                    empty: Icon(Icons.star_outline, color: Color(0xffFFD25D), ),
                    half: Icon(Icons.star_half, color: Color(0xffFFD25D)),
                  ),
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  width: 12,
                ),
                Text("Open now", style: TextStyle(color: Colors.green)),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or  randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                style: TextStyle(wordSpacing: 2, fontSize: 18)),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Contact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: Color(0xffEF6060)),
                        Text(
                          "   +4 232 2323 23",
                          style: TextStyle(color: Color(0xffEF6060)),
                        )
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
                        FaIcon(
                          FontAwesomeIcons.globe,
                          color: Color(0xff59A3BC),
                        ),
                        Text(
                          "   bugradere.com",
                          style: TextStyle(color: Color(0XFF59A3BC)),
                        )
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or  randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                style: TextStyle(wordSpacing: 2, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
