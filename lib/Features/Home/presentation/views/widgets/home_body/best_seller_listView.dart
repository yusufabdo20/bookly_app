import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_listView_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    var newestCubit = NewestBooksCubit.get(context);
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccessState) {
        return SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: newestCubit.bookModels.length, (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BookListViewItem(
              bookModel: newestCubit.bookModels[index],
            ),
          );
          // return ListView.builder(
          //   // shrinkWrap: true, // build all widgets in one time
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: newestCubit.bookModels.length,
          //   itemBuilder: (context, index) {

          //   },
          // );
        }));
      } else if (state is NewestBooksErrorState) {
        return SliverToBoxAdapter(
            child: CustomErrorWidget(errMsg: state.error));
      } else {
        return SliverToBoxAdapter(
          child: Center(
              child:
                  Image.asset("assets/images/Animation - 1699310838447.gif")),
        );
      }
    });
  }
}
