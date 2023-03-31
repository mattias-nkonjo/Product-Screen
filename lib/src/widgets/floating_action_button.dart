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
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                  width: 100,
                  child: FloatingActionButton(
                    tooltip: 'Buy Now',
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.shopping_cart_checkout),
                        Text('Buy Now'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                FloatingActionButton(
                  tooltip: 'Add To Shopping Cart',
                  child: const Icon(Icons.add_shopping_cart),
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
              ],
            )
          : null,
    );
  }
}
