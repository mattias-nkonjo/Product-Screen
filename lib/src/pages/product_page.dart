import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geepx_test/src/constants/color_palette.dart';
import 'package:geepx_test/src/widgets/floating_action_button.dart';
import 'package:geepx_test/src/widgets/widgets.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late ScrollController _controller;

  bool _isVisible = true;

  FloatingActionButtonLocation get _fabLocation => _isVisible
      ? FloatingActionButtonLocation.endContained
      : FloatingActionButtonLocation.endFloat;

  void _listen() {
    final ScrollDirection direction = _controller.position.userScrollDirection;
    if (direction == ScrollDirection.reverse) {
      _show();
    } else if (direction == ScrollDirection.forward) {
      _hide();
    }
  }

  void _show() {
    if (!_isVisible) {
      setState(() => _isVisible = true);
    }
  }

  void _hide() {
    if (_isVisible) {
      setState(() => _isVisible = false);
    }
  }

  var _isActive = true;
  var _chipSelected = true;
  void _handleTap() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  void _onChipSelect(bool selected) {
    setState(() {
      _chipSelected = selected;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_listen);
  }

  @override
  void dispose() {
    _controller.removeListener(_listen);
    _controller.dispose();
    super.dispose();
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
        controller: _controller,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                  ),
                  const SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AHA BHA PHA 30 Days',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Miracle Starter Kit',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      const PriceCard(),
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
                      Text('Brand Name',
                          style: Theme.of(context).textTheme.labelMedium),
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
                  const Divider(),
                  const SizedBox(height: 30),
                  const LabelWidget(text: 'Colours: '),
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
                  const LabelWidget(text: 'Size: '),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilterChip(
                        label: const Text('Small'),
                        onSelected: _onChipSelect,
                      ),
                      const SizedBox(width: 10),
                      FilterChip(
                        selected: _chipSelected,
                        label: const Text('Medium'),
                        onSelected: _onChipSelect,
                        side: BorderSide.none,
                      ),
                      const SizedBox(width: 10),
                      FilterChip(
                        label: const Text('Large'),
                        onSelected: _onChipSelect,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.child_friendly),
                          label: const Text('Shipping By ASYAD '),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.credit_card),
                          label: const Text('Shipping By ASYAD '),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shipping estimate',
                                style: Theme.of(context).textTheme.labelLarge),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register / Login',
                                style: TextStyle(color: ColorPalette.redColor),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: _handleTap,
                    child: Row(
                      children: [
                        Text(
                          "Description",
                          style: Theme.of(context).textTheme.headlineSmall,
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
            const ColorBox(
              color: ColorPalette.purpleColor,
              height: 129,
            ),
            const ColorBox(
              color: ColorPalette.darkColor,
              height: 265,
            ),
            const ColorBox(
              color: ColorPalette.blueColor,
              height: 265,
            ),
            const ColorBox(
              color: ColorPalette.darkGrayColor,
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
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FABWidget(
        isVisible: _isVisible,
      ),
      floatingActionButtonLocation: _fabLocation,
      bottomNavigationBar: const BottomAppBarWidget(),
    );
  }
}
