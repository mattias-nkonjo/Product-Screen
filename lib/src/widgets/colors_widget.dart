import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorPalette.purpleColor,
        shape: BoxShape.circle,
      ),
      height: 30,
      width: 30,
    );
  }
}
