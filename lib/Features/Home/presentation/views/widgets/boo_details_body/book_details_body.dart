import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/boo_details_body/bookAction.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/boo_details_body/similar_books_listView.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_body/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_details_information.dart';
import 'customAppBarBookDetails.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    // required this.bookModel,
  });
  // BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var newestCubit = NewestBooksCubit.get(context);
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(builder: (
      context,
      state,
    ) {
      return CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomAppBarBookDetails(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                      child: CustomBookImage(
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const BookDetailsInformationSection(),
                    const SizedBox(
                      height: 30,
                    ),
                    const BookAction(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "You can also like",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const SimilarBooksListView()
                  ],
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
