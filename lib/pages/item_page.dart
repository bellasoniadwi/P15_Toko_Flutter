import 'package:flutter/material.dart';
import 'package:pertemuan_15/models/item.dart';
import 'package:pertemuan_15/widgets/card_item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Moo Page Detail'),
        backgroundColor: Color.fromARGB(255, 243, 165, 191),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Card(
          child: Container(
              height: 320,
              margin: EdgeInsets.all(8),
              child: Center(
                child: CardItem(
                    imageUrl: itemArgs.imageUrl,
                    name: itemArgs.name,
                    price: itemArgs.price),
              )),
        ),
      ),
    );
  }
}
