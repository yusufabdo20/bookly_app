import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Splash/presentation_layer/views/splashView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    ); 
  }
}
