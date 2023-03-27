import 'package:flutter/material.dart';
import 'package:geepx_test/src/constants/color_palette.dart';
import 'package:badges/badges.dart' as badges;

class CustomBadge extends StatelessWidget {
  const CustomBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.purpleColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
          ),
        ],
      ),
      height: 130,
      width: 130,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.face,
                color: ColorPalette.nBlueColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    '40% off',
                    style: TextStyle(
                      color: ColorPalette.blueColor,
                    ),
                  ),
                  Text('7.99'),
                ],
              )
            ],
          ),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -40),
            badgeContent: const Text('OMR'),
            badgeStyle: const badges.BadgeStyle(
                badgeColor: Colors.transparent,
                shape: badges.BadgeShape.square,
                padding: EdgeInsets.all(3)),
            child: const Text('4.5',
                style: TextStyle(
                  color: ColorPalette.nBlueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                )),
          ),
          const Text(
            'Include VAT',
            style: TextStyle(
              color: ColorPalette.nBlueColor,
            ),
          )
        ],
      ),
    );
  }
}
