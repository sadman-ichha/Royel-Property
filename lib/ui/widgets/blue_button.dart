import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/const/app_colors.dart';

class BlueButton extends StatelessWidget {
  String buttonName;
  Function onAction;
  BlueButton(this.buttonName, this.onAction);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onAction();
      },
      child: Container(
        height: 56.0.h,
        width: 342.0.w,
        decoration: BoxDecoration(
          color: AppColors.appBlueColor,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0.r),
          ),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFFFFFFF)),
          ),
        ),
      ),
    );
  }
}
