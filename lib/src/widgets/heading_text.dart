import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          color: ColorPalette.darkGrayColor,
        ),
      ),
    );
  }
}
