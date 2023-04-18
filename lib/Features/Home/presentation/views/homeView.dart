import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:bookly_app/Features/Home/presentation/views/widgets/homeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}