import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
