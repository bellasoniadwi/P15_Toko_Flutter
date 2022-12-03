import 'package:flutter/material.dart';
import 'package:pertemuan_15/models/item.dart';
import 'package:pertemuan_15/widgets/card_item.dart';

class ListViews extends StatelessWidget {

  ListViews({required this.page, required this.items});

  final List<Item> items;
  final String page;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, page, arguments: item);
          },
          child:Container(
            margin: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(child: Text(item.name)),
                Expanded(child: Text(
                  "Stock : "+ item.stock.toString(),
                  textAlign: TextAlign.center
                )),
                Expanded(child: Text(
                  "Rp "+ item.price.toString(),
                  textAlign: TextAlign.end
                )),
              ]),
          ),
        );
      },
    );
  }
}