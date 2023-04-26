import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/home_body/best_seller_listView_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

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