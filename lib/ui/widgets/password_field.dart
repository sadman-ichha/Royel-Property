import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:royal_property/const/app_colors.dart';

RxBool isVisible = true.obs;

Widget passwordField(
  TextEditingController controller,
  TextInputType keyboardType,
) {
  return Container(
      height: 55.0.h,
      width: 342.0.w,
      decoration: BoxDecoration(
          color: AppColors.culturedColor,
          borderRadius: BorderRadius.all(Radius.circular(14.0.r))),
      child: Obx(
        () => TextFormField(
            controller: controller,
            obscureText: isVisible.value,
            //obscuringCharacter: "*",
            decoration: InputDecoration(
              hintText: "password must be 6 character",
              border: InputBorder.none,
              hintStyle: TextStyle(fontWeight: FontWeight.w500),
              labelText: "Password",
              labelStyle: TextStyle(color: AppColors.textColor),
              suffixIcon: Obx(() => IconButton(
                    onPressed: () {
                      isVisible.value = !isVisible.value;
                    },
                    icon: isVisible == false
                        ? const Icon(
                            Icons.visibility_outlined,
                            //  color: Colors.red,
                          )
                        : const Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey,
                          ),
                  )),
            )),
      ));
}
