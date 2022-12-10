import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/ui/styles/style.dart';
import 'package:royal_property/ui/widgets/blue_button.dart';
import 'package:royal_property/ui/widgets/custom_text_field.dart';
import 'package:royal_property/ui/widgets/white_appbar.dart';

class ForgetPasswordScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

  checkEmailPopup() {
    return Container();
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
          BlueButton("Reset Password", () {})
        ],
      ),
    );
  }
}
