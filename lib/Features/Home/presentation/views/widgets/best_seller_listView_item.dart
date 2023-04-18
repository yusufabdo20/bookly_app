import 'package:flutter/material.dart';

import 'best_seller_listView_item_image.dart';
import 'best_seller_listView_item_information.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BestSellerListViewItemImage(),
          const BestSellerListViewItemInformation(),
        ],
      ),
    );
  }
}
