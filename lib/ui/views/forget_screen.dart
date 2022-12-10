import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/ui/widgets/white_appbar.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar("Skip", () {}),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           SizedBox(height: 37.0.h),
          Center(
            child: Text("Forgot password",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1B1E28))),
          ),
        ],
      ),
    );
  }
}
