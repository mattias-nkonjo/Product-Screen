import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}
