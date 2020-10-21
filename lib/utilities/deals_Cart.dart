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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: foodPic, fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(19))),
                  height: 90,
                  width: 90,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dealTitle),
                Text(quantity),
                Row(
                  children: [Icon(Icons.location_on), Text(eta)],
                ),
                Row(
                  children: [
                    Text(
                      '\$$currentPrice',
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      '\$$oldPrice',
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
