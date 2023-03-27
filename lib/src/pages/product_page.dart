import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';
import 'package:geepx_test/src/widgets/colors_widget.dart';
import 'package:geepx_test/src/widgets/custom_badge.dart';
import 'package:geepx_test/src/widgets/heading_text.dart';
import 'package:geepx_test/src/widgets/product_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var _isActive = true;
  void _handleTap() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.clear_outlined),
        ),
        title: const Text('Product Name'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        Product(title: 'Product One'),
                        Product(title: 'Product Two'),
                        Product(title: 'Product Three'),
                        Product(title: 'Product Four'),
                        Product(title: 'Product Five'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('AHA BHA PHA 30 Days'),
                          Text('Miracle Starter Kit'),
                        ],
                      ),
                      const CustomBadge(),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: ColorPalette.purpleColor,
                        child: IconButton(
                          icon: const Icon(
                            Icons.check,
                            color: ColorPalette.darkGrayColor,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Brand Name',
                        style: TextStyle(
                          color: ColorPalette.faintColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Out of stock',
                            style: TextStyle(
                              color: ColorPalette.redColor,
                            ),
                          ),
                          Icon(
                            Icons.clear_outlined,
                            color: ColorPalette.redColor,
                          )
                        ],
                      ),
                      const Text('SKU: 235898464165'),
                    ],
                  ),
                  const Divider(
                    color: ColorPalette.blackColor,
                  ),
                  const SizedBox(height: 30),
                  const HeadingText(text: 'Colours: '),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ColorWidget(),
                      SizedBox(width: 10),
                      ColorWidget(),
                      SizedBox(width: 10),
                      ColorWidget(),
                      SizedBox(width: 10),
                      ColorWidget(),
                      SizedBox(width: 10),
                      ColorWidget(),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const HeadingText(text: 'Size: '),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.whiteColor,
                          elevation: 0.0,
                          side: const BorderSide(
                            color: ColorPalette.blackColor,
                          ),
                        ),
                        child: const Text(
                          'Small',
                          style: TextStyle(
                            color: ColorPalette.blackColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check,
                          color: ColorPalette.blackColor,
                        ),
                        label: const Text(
                          'Medium',
                          style: TextStyle(
                            color: ColorPalette.blackColor,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.purpleColor,
                          elevation: 0.0,
                          side: const BorderSide(
                            color: ColorPalette.blackColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.whiteColor,
                          elevation: 0.0,
                          side: const BorderSide(
                            color: ColorPalette.blackColor,
                          ),
                        ),
                        child: const Text(
                          'Large',
                          style: TextStyle(
                            color: ColorPalette.blackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 31,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(
                          color: ColorPalette.blackColor,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.child_friendly,
                            color: ColorPalette.blueColor,
                          ),
                          label: const Text(
                            'Shipping By ASYAD ',
                            style: TextStyle(color: ColorPalette.blueColor),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.whiteColor,
                            elevation: 0.0,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.credit_card,
                            color: ColorPalette.blueColor,
                          ),
                          label: const Text(
                            'Cash In Delivery',
                            style: TextStyle(
                              color: ColorPalette.blueColor,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.whiteColor,
                            elevation: 0.0,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Shipping estimate'),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register / Login',
                                style: TextStyle(color: ColorPalette.redColor),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: ColorPalette.blackColor,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: _handleTap,
                    child: Row(
                      children: [
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          _isActive
                              ? Icons.expand_more_rounded
                              : Icons.expand_less_outlined,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(_isActive
                      ? "If you have sensitive skin that causes problems, even if you're a little tired, follow Miracle Kit's 4-STEP solution."
                      : ""),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: ColorPalette.purpleColor,
              ),
              height: 129,
            ),
            Container(
              decoration: const BoxDecoration(
                color: ColorPalette.darkColor,
              ),
              height: 265,
            ),
            Container(
              decoration: const BoxDecoration(
                color: ColorPalette.blueColor,
              ),
              height: 265,
            ),
            Container(
              decoration: const BoxDecoration(
                color: ColorPalette.darkGrayColor,
              ),
              height: 265,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 31,
                right: 31,
                bottom: 80,
                top: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/1.png',
                        width: 50,
                      ),
                      Image.asset(
                        'assets/icons/2.png',
                        width: 50,
                      ),
                      Image.asset(
                        'assets/icons/3.png',
                        width: 50,
                      ),
                      Image.asset(
                        'assets/icons/5.png',
                        width: 50,
                      ),
                      Image.asset(
                        'assets/icons/6.png',
                        width: 50,
                      ),
                    ],
                  ),
                  const Divider(
                    color: ColorPalette.blackColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorPalette.purpleColor,
        child: IconTheme(
          data: const IconThemeData(color: ColorPalette.blackColor),
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: 'Share',
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.favorite_border_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
