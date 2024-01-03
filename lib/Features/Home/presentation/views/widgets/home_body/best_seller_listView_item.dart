import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_body/custom_book_image.dart';
import 'package:bookly_app/core/utils/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_listView_item_information.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouters.kBookDetailsView, extra: bookModel);
        // GoRouter.of(context).pushNamed("/bookDetailsView",
        //     queryParams: {'bookModel': bookModel});
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Custom
            CustomBookImage(
                image: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                    "https://as2.ftcdn.net/v2/jpg/04/70/29/97/1000_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg"),
            // BookListViewItemImage(
            //     image: bookModel.volumeInfo?.imageLinks?.thumbnail ??
            //         "https://as2.ftcdn.net/v2/jpg/04/70/29/97/1000_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg"),
            BestSellerListViewItemInformation(bookModel: bookModel),
          ],
        ),
      ),
    );
  }
}
