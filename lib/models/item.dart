import 'package:flutter/material.dart';

class Item{
  String name;
  int price;
  String imageUrl;
  int stock;

  Item({
    required this.name, 
    required this.price,
    required this.imageUrl,
    required this.stock
  });
}