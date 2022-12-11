import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:royal_property/const/app_colors.dart';
import 'package:royal_property/const/app_images.dart';
import 'package:royal_property/routes/route.dart';
import 'package:royal_property/ui/styles/style.dart';
import 'package:royal_property/ui/widgets/blue_button.dart';
import 'package:royal_property/ui/widgets/custom_text_field.dart';
import 'package:royal_property/ui/widgets/password_field.dart';
import 'package:royal_property/ui/widgets/white_appbar.dart';

class LogInScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar("Skip", () {}),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 37.0.h),
            Center(
              child: Text("Sign in now",
                  style: TextStyle(
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1B1E28))),
            ),
            SizedBox(height: 14.0.h),
            Text("Please sign in to continue our app",
                style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7D848D))),
            SizedBox(height: 36.0.h),

            customTextField(
                "your@gmail.com", _emailController, TextInputType.emailAddress),
            SizedBox(height: 32.0.h),
            passwordField(_passwordController, TextInputType.none),
            SizedBox(height: 16.0.h),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, right: 24.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(forgetpassword),
                    child: Text("Forget Password?",
                        style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.appBlueColor)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 81.0.h),
            BlueButton("Sign In", () {}), 
            SizedBox(height: 40.0.h),
            AppStyles().richText("Don’t have an account?", " Sign Up",login),
            SizedBox(height: 16.0.h),
            Text("Or connect", style: AppStyles.textStyle),
            SizedBox(height: 46.0.h),
            // SizedBox(height: 25.0.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    AppImages.fbLogo,
                    height: 44.0.h,
                    width: 44.0.w,
                  ),
                ),
                SizedBox(width: 20.0.w),
                InkWell(
                  onTap: (() {}),
                  child: Image.asset(
                    AppImages.instraLogo,
                    height: 44.0.h,
                    width: 44.0.w,
                  ),
                ),
                SizedBox(width: 20.0.w),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    AppImages.twitterLogo,
                    height: 44.0.h,
                    width: 44.0.w,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
