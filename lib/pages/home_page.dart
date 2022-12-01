import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pertemuan_15/models/item.dart';

class HomePage extends StatelessWidget{
  final List<Item> items = [
    Item(name: 'Sugar', price:5000),
    Item(name: 'Salt', price:2000),
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shop'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: ((context, index){
              final item = items[index];
              return Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(item.price.toString(),
                        textAlign: TextAlign.end,),
                        ),
                    ]),),
              );
            })), 
        ),
      ),
    );
    throw UnimplementedError();
  }
}