import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle appStyle(
  double size,
  Color color,
  FontWeight fw, {
  TextDecoration? txtDecoration, String? fontFamily,
}) {
  return TextStyle(
    fontSize: size.sp,
    color: color,
    fontWeight: fw,
    decoration: txtDecoration ?? TextDecoration.none,
    fontFamily: fontFamily?? ""
  );
}
