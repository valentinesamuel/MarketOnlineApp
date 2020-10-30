import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8F8F8),
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               
                Text(
                  'Total:',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '\$25',
                  style: TextStyle(fontSize: 19, color: Color(0xffB23F56)),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            width: 189,
            decoration: BoxDecoration(
                color: Color(0xffB23F56),
                borderRadius: BorderRadius.circular(23)),
            child: Center(
                child: Text('Purchase'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19
                    ))),
          ),
        ],
      ),
    );
  }
}
