import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../const/app_colors.dart';

class DotIndicator {
 static DotsIndicator dotIndicator = DotsIndicator(
    decorator: DotsDecorator(
      size: const Size.square(9.0),
      activeSize: const Size(35.0, 9.0),
      activeColor: AppColors.appBlueColor,
      color: const Color(0xFFBFD9FF),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    dotsCount: 3,
  );
}
