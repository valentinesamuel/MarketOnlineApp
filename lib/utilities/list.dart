import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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

List foodCategories = ['Drinks', 'Food', 'Desert', 'Snacks', 'Others'];

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

//For Sore featured items
class StoreFeatured {
  RatingBar starRating;
  int numberofVotes;
  String itemName;
  String color;
  String typeName;
  AssetImage picture;
  Color bgColor;

  StoreFeatured(
      {this.color,
      this.itemName,
      this.numberofVotes,
      this.picture,
      this.bgColor,
      this.starRating,
      this.typeName});
}

List<StoreFeatured> storeFeaturedItems = [
  StoreFeatured(
    bgColor: Color(0xffD6E7FF),
    picture: AssetImage("assets/food/cocktail-jug.png"),
    color: "Blue",
    itemName: "Coctail",
    typeName: "Diamond",
    numberofVotes: 123,
    starRating: RatingBar(
      initialRating: 2,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 25,
      ratingWidget: RatingWidget(
        full: Icon(
          Icons.star,
          color: Colors.blue,
        ),
        empty: Icon(Icons.star_outline, color: Colors.blue),
        half: Icon(Icons.star_half, color: Colors.blue),
      ),
      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
      onRatingUpdate: (rating) {},
    ),
  ),
  StoreFeatured(
    picture: AssetImage("assets/food/coffeer.png"),
        bgColor: Color(0xffD6E7FF),

    color: "Caramel",
    itemName: "Coffee",
    typeName: "Latte",
    numberofVotes: 125,
    starRating: RatingBar(
      initialRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 25,
      ratingWidget: RatingWidget(
        full: Icon(
          Icons.star,
          color: Color(0xffFA8968),
        ),
        empty: Icon(Icons.star_outline, color: Color(0xffFA8968)),
        half: Icon(Icons.star_half, color: Color(0xffFA8968)),
      ),
      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
      onRatingUpdate: (rating) {},
    ),
  ),
  StoreFeatured(
    picture: AssetImage("assets/food/juice.png"),
        bgColor: Color(0xffD6E7FF),

    color: "Orange",
    itemName: "Juice",
    typeName: "Fruit",
    numberofVotes: 500,
    starRating: RatingBar(
      initialRating: 4,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 25,
      ratingWidget: RatingWidget(
        full: Icon(Icons.star, color: Colors.orange[300]),
        empty: Icon(Icons.star_outline, color: Colors.orange[300]),
        half: Icon(Icons.star_half, color: Colors.orange[300]),
      ),
      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
      onRatingUpdate: (rating) {},
    ),
  ),
  StoreFeatured(
    picture: AssetImage("assets/food/mango.png"),
    color: "Mango",
        bgColor: Color(0xffD6E7FF),

    itemName: "Juice",
    typeName: "Fruit",
    numberofVotes: 444,
    starRating: RatingBar(
      initialRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 25,
      ratingWidget: RatingWidget(
        full: Icon(Icons.star, color: Color(0xffC17E1D)),
        empty: Icon(Icons.star_outline, color: Color(0xffC17E1D)),
        half: Icon(Icons.star_half, color: Color(0xffC17E1D)),
      ),
      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
      onRatingUpdate: (rating) {},
    ),
  ),
];

//For discount offers
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
];
