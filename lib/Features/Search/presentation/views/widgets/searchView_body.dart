import 'package:bookly_app/Features/Home/presentation/views/widgets/home_body/best_seller_listView.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_body/best_seller_listView_item.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/search_result_listView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_search_textField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomSearchTextField(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Search results",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SearchResultListView(),
            ),
          ],
        ),
      ),
    );
  }
}
