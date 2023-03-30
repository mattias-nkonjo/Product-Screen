import 'package:flutter/material.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({
    required this.isVisible,
    super.key,
  });
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: isVisible
          ? FloatingActionButton(
              onPressed: () {},
              tooltip: 'Add To Shopping Cart',
              child: const Icon(Icons.add_shopping_cart),
            )
          : null,
    );
  }
}
