// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/ui/styles/style.dart';

import 'package:royal_property/ui/widgets/white_appbar.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpVerificationScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

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
            child: Text("OTP Verification",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1B1E28))),
          ),
          SizedBox(height: 12.0.h),
          Text(
            "Please check your email www.uihut@gmail.com to see the verification code",
            textAlign: TextAlign.center,
            style: AppStyles.textStyle,
          ),
          SizedBox(height: 37.0.h),
          PinFieldAutoFill(
                decoration: UnderlineDecoration(
                  textStyle: TextStyle(fontSize: 20, color: Colors.black),
                  colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
                ),)
        ],
      ),
    );
  }
}
