import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/Home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_routing.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBooksCubit(
            HomeRepoImplementation(
              ApiService(
                Dio(),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeRepoImplementation(
              ApiService(
                Dio(),
              ),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.ralewayTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
