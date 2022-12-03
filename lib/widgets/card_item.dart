import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

  CardItem({
      required this.imageUrl,
      required this.name,
      required this.price});

  final String imageUrl;
  final String name;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Image.asset(
          "assets/images/" + imageUrl,
          width: 200,
          height: 200,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          child: Text(
            "Rp. " + price.toString(),
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
      ],
    );
  }
}