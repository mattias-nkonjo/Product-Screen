import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';
import 'package:badges/badges.dart' as badges;

class PriceCard extends StatelessWidget {
  const PriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 130,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.loyalty,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        '40% off',
                        style: TextStyle(
                          color: ColorPalette.blueColor,
                        ),
                      ),
                      Text(
                        '7.99',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  )
                ],
              ),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: -0, end: -33),
                badgeContent: const Text(
                  'OMR',
                ),
                badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.transparent,
                    shape: badges.BadgeShape.square,
                    padding: EdgeInsets.all(3)),
                child: Text(
                  '4.5',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Include VAT',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
