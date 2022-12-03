import 'package:flutter/material.dart';
import 'package:pertemuan_15/models/item.dart';
import 'package:pertemuan_15/widgets/list_view.dart';

class HomePage extends StatelessWidget {

  final List<Item> items = [
    Item(name: 'Bedcover', price: 300000, imageUrl: "bedcover.jpg", stock: 5),
    Item(name: 'Boneka', price: 50000, imageUrl: "boneka.jpg", stock: 10),
    Item(name: 'Sandal', price: 30000, imageUrl: "sandal.jpg", stock: 25),
    Item(name: 'Tas', price: 40000, imageUrl: "tas.jpg", stock: 20)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moo Shopping List'),
        backgroundColor: Color.fromARGB(255, 243, 165, 191),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListViews(
          items: items,
          page: '/item',
        ),
      ),
    );
  }
}