import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class BookListViewItemImage extends StatelessWidget {
  const BookListViewItemImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: AspectRatio(
        aspectRatio: .8,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(AssetsData.test),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
