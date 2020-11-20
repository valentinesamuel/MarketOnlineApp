import './categoriescontainer.dart';
import './list.dart';
import 'package:flutter/material.dart';

class CategoriesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, int index) {
            return CategoriesContainer(
                name: labels[index], picture: images[index]);
          }),
    );
  }
}
