import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';

class Product extends StatelessWidget {
  const Product({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 280,
      width: 325,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(title),
      )),
    );
  }
}
