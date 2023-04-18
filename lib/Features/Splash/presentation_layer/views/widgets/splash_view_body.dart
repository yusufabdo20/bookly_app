import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import '../../../../../constants.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // Give you value  0=>1
  late Animation<Offset>
      slidingAnimation; // Change on value in the animation controller
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

  }

  void initSlidingAnimation() {
      animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset(0, 0))
            .animate(animationController);
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
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
        Image.asset(
          AssetsData.logo,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
