// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/ui/styles/style.dart';
import 'package:royal_property/ui/widgets/blue_button.dart';
import 'package:royal_property/ui/widgets/white_appbar.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpVerificationScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0.h),
          WhiteAppBar("Skip", () {}),
          SizedBox(height: 37.0.h),
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 24.0.w,right: 24.0.w),
              child: Text("OTP Verification",
                  style: TextStyle(
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1B1E28))),
            ),
          ),
          SizedBox(height: 12.0.h),
          Padding(
            padding:EdgeInsets.only(left: 24.0.w,right: 24.0.w),
            child: Text(
              "Please check your email www.uihut@gmail.com to see the verification code",
              textAlign: TextAlign.center,
              style: AppStyles.textStyle,
            ),
          ),
          SizedBox(height: 29.0.h),
          Padding(
            padding:EdgeInsets.only(left: 24.0.w,right: 24.0.w),
            child: Text("OTP Code",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1B1E28))),
          ),
          SizedBox(height: 32.0.h),
          Padding(
            padding: EdgeInsets.only(left: 24.0.w,right: 24.0.w),
            child: PinFieldAutoFill(
              codeLength: 4,
              decoration: BoxLooseDecoration(
                  strokeColorBuilder: FixedColorBuilder(Colors.black)),
            ),
          ),
          SizedBox(height: 37.0.h),
          Center(child: BlueButton("Verify", (){})),
          SizedBox(height: 16.0.h),
          Padding(
            padding: EdgeInsets.only(left: 30.0.w,right: 30.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Resend code to",style: AppStyles.textStyle),
              
              Text("01:26",style: AppStyles.textStyle,)

            ],),
          )

        ],
      ),
    );
  }
}
