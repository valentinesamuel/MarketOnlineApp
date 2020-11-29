import 'package:flutter/material.dart';

class DealsCard extends StatelessWidget {
  final AssetImage foodPic;
  final String dealTitle;
  final String eta;
  final int currentPrice;
  final int oldPrice;
  final String quantity;

  DealsCard(
      {this.dealTitle,
      this.foodPic,
      this.eta,
      this.currentPrice,
      this.oldPrice,
      this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Stack(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: foodPic, fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(19))),
                          height: 100,
                          width: 100,
                        ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Icon(
                            Icons.ac_unit,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(dealTitle,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text(
                    quantity,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 13,
                      ),
                      SizedBox(width: 2),
                      Text(eta)
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '\$$currentPrice',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        '\$$oldPrice',
                        style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
