import 'package:bookly_app/core/utils/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_listView_item_image.dart';
import 'best_seller_listView_item_information.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDetailsView);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            BookListViewItemImage(),
            BestSellerListViewItemInformation(),
          ],
        ),
      ),
    );
  }
}
