import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/const/app_colors.dart';
import 'package:royal_property/const/app_images.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 444.0.h,
            width: 390.0.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.onboardingImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
          SizedBox(height: 40.0.h),
          Padding(
            padding: EdgeInsets.only(
              right: 24.0.w,
              left: 24.0.w,
            ),
            child: Expanded(
              child: Column(
                children: [
                  Text("Search properties for\n sale and for rent in UK",
                      selectionColor: const Color(0xFF091E42),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32.0.sp,
                          fontWeight: FontWeight.w700,
                          height: 1.3.h,
                          wordSpacing: 1.5.sp)),
                  SizedBox(height: 12.0.h),
                  Text("Find properties for sale and\n rent in the USA",
                      selectionColor: const Color(0xFF354764),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.5.h,
                          wordSpacing: 1.8.sp)),
                  SizedBox(height: 40.0.h),
                  DotsIndicator(
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(35.0, 9.0),
                      activeColor: AppColors.appBlueColor,
                      color: const Color(0xFFBFD9FF),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    dotsCount: 3,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
