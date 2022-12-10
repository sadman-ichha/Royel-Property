import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/const/app_colors.dart';

Widget passwordField(
  String? hintText,
  String? labelText,
  TextEditingController controller,
  TextInputType keyboardType,
) {
  return Container(
    height: 55.0.h,
    width: 342.0.w,
    decoration: BoxDecoration(
        color: AppColors.culturedColor,
        borderRadius: BorderRadius.all(Radius.circular(14.0.r))),
    child: TextFormField(
        controller: controller,
        obscureText: true,
        //obscuringCharacter: "*",
        decoration: InputDecoration(
          hintText: "password must be 6 character",
          border: InputBorder.none,
          hintStyle: TextStyle(fontWeight: FontWeight.w500),
          labelText: "Password",
          labelStyle: TextStyle(color: AppColors.textColor),
          suffixIcon: IconButton(
              onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined)),
        )),
  );
}
