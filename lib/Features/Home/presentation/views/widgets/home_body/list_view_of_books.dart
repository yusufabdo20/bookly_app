import 'package:bookly_app/Features/Home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class ListViewOfBooks extends StatelessWidget {
  const ListViewOfBooks({super.key});

  @override
  Widget build(BuildContext context) {
    var featuredCubit = FeaturedBooksCubit.get(context);
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: ListView.builder(
                itemCount: featuredCubit.bookModels.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomBookImage(
                    image: featuredCubit.bookModels[index].volumeInfo
                            ?.imageLinks?.thumbnail ??
                        'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg',
                  );
                },
                // itemCount: 10,
              ),
            ),
          );
        } else if (state is FeaturedBooksErrorState) {
          return CustomErrorWidget(errMsg: state.e);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
