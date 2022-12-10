import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_property/const/app_colors.dart';

class WhiteAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0.h);
  String skipText;
  Function onAction;
  WhiteAppBar(this.skipText, this.onAction);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0.w, left: 8.0.w),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.scaffoldBackgroundColor,
        elevation: 0,
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFF7F7F9),
          child: Center(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_sharp,
                  size: 19.5,
                )),
          ),
        ),
        actions: [
          Center(
            child: TextButton(
              onPressed: () {
                onAction();
              },
              child: Text(skipText,
                  style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF66A3FF))),
            ),
          )
        ],
      ),
    );
  }
}
