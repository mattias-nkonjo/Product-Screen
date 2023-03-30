import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  const ColorBox({
    required this.color,
    required this.height,
    super.key,
  });

  final Color color;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      height: height,
    );
  }
}
