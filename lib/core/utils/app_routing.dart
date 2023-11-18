import 'package:bookly_app/Features/Home/presentation/views/homeView.dart';
import 'package:bookly_app/Features/Search/presentation/views/searchView.dart';
import 'package:bookly_app/Features/Splash/presentation_layer/views/splashView.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const BookDetailsView(),
      ),
      // GoRoute(
      //   path: kSearchView,
      //   builder: (context, state) => const SearchView(),
      // ),
    ],
  );
}
