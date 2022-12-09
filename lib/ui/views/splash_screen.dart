import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:royal_property/const/app_images.dart';
import 'package:royal_property/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: SplashController(),
        builder: (controller) {
          return Center(
            child: Image.asset(AppImages.splashImage),
          );
        },
      ),
    );
  }
}
