import 'package:bookly_app/Features/Home/presentation/views/homeView.dart';
import 'package:bookly_app/Features/Splash/presentation_layer/views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  // GoRouter configuration
  static const kHomeView= "/homeView"; 
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // Start Screen , in App 
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
