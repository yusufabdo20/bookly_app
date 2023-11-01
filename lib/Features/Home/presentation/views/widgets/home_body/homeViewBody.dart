import 'package:flutter/material.dart';

import 'best_seller_listView.dart';
import 'customAppBar.dart';
import 'list_view_of_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomAppBar(),
            ),
          ),
          SliverToBoxAdapter(child: ListViewOfBooks()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Best Seller",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: BestSellerListView(),
            ),
          )
        ],
      ),
    );
    // return SafeArea(
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const CustomAppBar(),
    //         const ListViewOfBooks(),
    //         const SizedBox(
    //           height: 40,
    //         ),
    //         const Text(
    //           "Best Seller",
    //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //         ),
    //         BestSellerListView(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
