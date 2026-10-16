import 'package:easylearn/common/utils/kcolors.dart';
import 'package:easylearn/common/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar() {
  return AppBar(
    title: Center(
      child: Text(
        "Log In", textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.sp,
          color: Kolors.kGray,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0),
      // here the height of the container defines thickness of the line
      child: Container(color: Kolors.kOffWhite, height: 1.0),
    ),
  );
}
