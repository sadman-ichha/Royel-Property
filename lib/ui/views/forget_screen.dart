// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:royal_property/const/app_colors.dart';
import 'package:royal_property/routes/route.dart';
import 'package:royal_property/ui/styles/style.dart';
import 'package:royal_property/ui/widgets/blue_button.dart';
import 'package:royal_property/ui/widgets/custom_text_field.dart';
import 'package:royal_property/ui/widgets/white_appbar.dart';

class ForgetPasswordScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

  checkEmailPopup(context) {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24.0))),
            content: Container(
              height: 180.0.h,
              width: 342.0.w,
              decoration: BoxDecoration(
                color: AppColors.scaffoldBackgroundColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 25.0.h),
                  CircleAvatar(
                    child: Icon(Icons.email_outlined),
                  ),
                  SizedBox(height: 27.0.h),
                  Text("Check your email",
                      style: TextStyle(
                          fontSize: 24.0.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1B1E28))),
                  SizedBox(height: 10.0.h),
                  Text(
                    "We have send password recovery\n instruction to your email",
                    textAlign: TextAlign.center,
                    style: AppStyles.textStyle,
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.0.h),
          WhiteAppBar("Skip", () {}),
          SizedBox(height: 37.0.h),
          Center(
            child: Text("Forgot password",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1B1E28))),
          ),
          SizedBox(height: 12.0.h),
          Text(
            "Enter your email account to reset \n your password",
            textAlign: TextAlign.center,
            style: AppStyles.textStyle,
          ),
          SizedBox(height: 37.0.h),
          customTextField(
              "your@gmail.com", _emailController, TextInputType.emailAddress),
          SizedBox(height: 40.0.h),
          BlueButton("Reset Password", () {
            // checkEmailPopup(context);
            Get.toNamed(otpverificationscreen);
          }),
        ],
      ),
    );
  }
}
