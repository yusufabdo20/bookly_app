import 'package:flutter/material.dart';

import 'best_seller_listView_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true, // build all widgets in one time
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const BookListViewItem();
      },
    );
  }
}
