import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';

class Product extends StatelessWidget {
  const Product({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.purpleColor,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 320,
      width: 320,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 5, left: 5),
      child: const Text('Product One'),
    );
  }
}
