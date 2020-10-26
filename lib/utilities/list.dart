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
  AssetImage("assets/food/alcohol.jpg"),
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
  "Alcohol"
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
  Deals(
      currentPrice: 23,
      dealName: "Ice-Cream",
      estimatedTime: "4 minutes away",
      oldPrice: 24,
      quantity: "5 pieces",
      picture: AssetImage("assets/food/ice-cream-pack.jpg")),
  Deals(
      currentPrice: 23,
      dealName: "Large Coca-Cola Pack",
      estimatedTime: "21 minutes away",
      oldPrice: 67,
      quantity: "3 pieces",
      picture: AssetImage("assets/food/coca-cola.jpg")),
  Deals(
      currentPrice: 61,
      dealName: "Burger",
      estimatedTime: "26 minutes away",
      oldPrice: 69,
      quantity: "9 pieces",
      picture: AssetImage("assets/food/burger.jpg")),
  Deals(
      currentPrice: 15,
      dealName: "Strawberry MilkShake",
      estimatedTime: "23 minutes away",
      oldPrice: 54,
      quantity: "2 pieces",
      picture: AssetImage("assets/food/milkshake-strawberry.jpg")),
];

class DiscountOffers {
  AssetImage discountImage;
  int oldPrice;
  int newPrice;
  String availablility;

  DiscountOffers(
      {this.availablility, this.discountImage, this.newPrice, this.oldPrice});
}

List<DiscountOffers> discountInfo = [
  DiscountOffers(
      availablility: "Available till 10 December, 2020",
      discountImage: AssetImage("assets/food/hamburger.png"),
      newPrice: 23,
      oldPrice: 86),
  DiscountOffers(
      availablility: "Available till 12 January, 2021",
      discountImage: AssetImage("assets/food/hamburger.png"),
      newPrice: 41,
      oldPrice: 12),
  DiscountOffers(
      availablility: "Available till 31 Febuary, 2021",
      discountImage: AssetImage("assets/food/hamburger.png"),
      newPrice: 23,
      oldPrice: 86),
  // DiscountOffers(
  //     availablility: "Available till 2 November, 2020",
  //     discountImage: AssetImage("assets/food/milkshake-strawberry.jpg"),
  //     newPrice: 23,
  //     oldPrice: 56),
];
