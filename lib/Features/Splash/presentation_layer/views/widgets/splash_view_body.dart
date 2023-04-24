import 'package:bookly_app/core/utils/app_routing.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../Home/presentation/views/homeView.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            AssetsData.logo,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
    navigateToScreen(screen: const HomeView());
  }

  void navigateToScreen({required Widget screen}) {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => screen,
      //     transition: Transition.circularReveal,
      //     duration: kTransactionDuration);
      GoRouter.of(context).push(
        AppRouters.kHomeView,
      );
    });
  }
}
