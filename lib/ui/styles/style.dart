import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../const/app_colors.dart';

class AppStyles {
  RichText richText(String firstText, String secText, navigatePage) => RichText(
        text: TextSpan(
            text: firstText,
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF707B81),
            ),
            children: [
              TextSpan(
                text: secText,
                style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.appBlueColor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.toNamed(navigatePage),
              )
            ]),
      );

 static TextStyle textStyle = TextStyle(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF7D848D));
}
