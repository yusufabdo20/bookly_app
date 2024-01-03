import 'package:bookly_app/Features/Home/presentation/view_models/similer_books_cubit/cubit/similer_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../data/models/book_model/book_model.dart';
import '../home_body/custom_book_image.dart';

class SimilarBooksListView extends StatefulWidget {
  const SimilarBooksListView({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  State<SimilarBooksListView> createState() => _SimilarBooksListViewState();
}

class _SimilarBooksListViewState extends State<SimilarBooksListView> {
  @override
  void initState() {
    SimilerBooksCubit.get(context).fetchSimilerBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
        builder: (context, state) {
      if (state is SimilerBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomBookImage(
                image: state
                        .bookModels[index].volumeInfo?.imageLinks?.thumbnail ??
                    "https://as2.ftcdn.net/v2/jpg/04/70/29/97/1000_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg",
              );
            },
            itemCount: state.bookModels.length,
          ),
        );
      } else if (state is SimilerBooksError) {
        return CustomErrorWidget(
          errMsg: state.error,
        );
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
