import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/const/app_colors.dart';

Widget customTextField(
  String? hintText,
  TextEditingController controller,
  TextInputType keyboardType, {
  String? labelText,
}) {
  return Container(
    height: 55.0.h,
    width: 342.0.w,
    decoration: BoxDecoration(
        color: AppColors.culturedColor,
        borderRadius: BorderRadius.all(Radius.circular(14.0.r))),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        labelText: labelText,
        labelStyle: TextStyle(color: AppColors.textColor),
        // labelStyle: TextStyle(color: AppColors.culturedColor),
      ),
    ),
  );
}
