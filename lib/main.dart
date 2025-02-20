import 'package:flutter/material.dart';
import 'package:pertemuan_15/pages/home_page.dart';
import 'package:pertemuan_15/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage()
    },
  ));
}
