import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/style/text-styles.dart';
import 'best_seller_listView.dart';
import 'best_seller_listView_item.dart';
import 'best_seller_listView_item_image.dart';
import 'best_seller_listView_item_information.dart';
import 'customAppBar.dart';
import 'custom_listView_item.dart';
import 'list_view_of_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const ListViewOfBooks(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Best Seller",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
