import 'package:flutter/material.dart';

List images = [
  AssetImage("assets/food/steak.jpg"),
  AssetImage("assets/food/beverage.jpg"),
  AssetImage("assets/food/bread.jpg"),
  AssetImage("assets/food/cereal.jpg"),
  AssetImage("assets/food/cheese.jpg"),
  AssetImage("assets/food/eggs.jpg"),
  AssetImage("assets/food/fish.jpg"),
  AssetImage("assets/food/fruit.jpg"),
  AssetImage("assets/food/milk.jpg"),
  AssetImage("assets/food/nuts.jpg"),
  AssetImage("assets/food/pasta.jpg"),
  AssetImage("assets/food/rice.jpg"),
  AssetImage("assets/food/vegetables.jpg"),
  AssetImage("assets/food/wine.jpg"),
];

List labels = [
  "Steak",
  "Beverage",
  "Bread",
  "Cereal",
  "Cheese",
  "Eggs",
  "Fish",
  "Fruit",
  "Milk",
  "Nuts",
  "Pasta",
  "Rice",
  "Vegetables",
  "Wine",
];

//For Deal Card
class Deals {
  String dealName;
  String quantity;
  String estimatedTime;
  int currentPrice;
  int oldPrice;
  AssetImage picture;

  Deals(
      {this.currentPrice,
      this.dealName,
      this.estimatedTime,
      this.oldPrice,
      this.picture,
      this.quantity});
}

List<Deals> dealDetails = [

  // TODO! Comeback to complete the correct editin of this listview builder
  Deals(
      currentPrice: 23,
      dealName: "Large Coke",
      estimatedTime: "4 minutes away",
      oldPrice: 24,
      quantity: "5 pieces",
      picture: AssetImage("assets/food/ice-cream-pack.jpg")),
  Deals(
      currentPrice: 23,
      dealName: "Large Fanta Pack",
      estimatedTime: "21 minutes away",
      oldPrice: 67,
      quantity: "3 pieces",
      picture: AssetImage("assets/food/coca-cola.jpg")),
  Deals(
      currentPrice:61,
      dealName: "Large Sprpite Pack",
      estimatedTime: "26 minutes away",
      oldPrice: 69,
      quantity: "9 pieces",
      picture: AssetImage("assets/food/burger.jpg")),
];
