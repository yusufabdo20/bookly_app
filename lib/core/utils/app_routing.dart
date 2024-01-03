import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/Home/presentation/view_models/similer_books_cubit/cubit/similer_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/homeView.dart';
import 'package:bookly_app/Features/Search/presentation/views/searchView.dart';
import 'package:bookly_app/Features/Splash/presentation_layer/views/splashView.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Home/data/models/book_model/book_model.dart';
import '../../Features/Home/presentation/views/bookDetailsView.dart';

abstract class AppRouters {
  // GoRouter configuration
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/homeView/searchView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // Start Screen , in App
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        name: "/bookDetailsView",
        builder: (context, state) {
          BookModel bookModel = state.extra as BookModel;
          return BlocProvider(
            create: (context) =>
                SimilerBooksCubit(getIt.get<HomeRepoImplementation>()),
            child: BookDetailsView(
              bookModel: bookModel,
            ),
          );
        },
      ),
      // GoRoute(
      //   path: kSearchView,
      //   builder: (context, state) => const SearchView(),
      // ),
    ],
  );
}
