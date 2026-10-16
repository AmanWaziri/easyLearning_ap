import 'package:easylearn/common/utils/kcolors.dart';
import 'package:easylearn/common/widgets/app_style.dart';
import 'package:easylearn/common/widgets/custom_button.dart';
import 'package:easylearn/common/widgets/reusable_text.dart';
import 'package:easylearn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String btnText;
  final String? image;
  final int index;
  final VoidCallback onNext;
  final BoxFit? imageFit;

  const WelcomeScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.btnText,
    this.image,
    this.imageFit,
    required this.index,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kolors.kWhite,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            Image.asset(image ?? '', fit: imageFit?? BoxFit.cover),
            SizedBox(height: 30.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: appStyle(24, Kolors.kGray, FontWeight.bold),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: ScreenUtil().screenWidth - 100,
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: appStyle(11, Kolors.kGray, FontWeight.normal),
              ),
            ),
            SizedBox(height: 20.h),
            CustomButton(
              text: btnText,
              btnHieght: 35.h,
              radius: 20,
              btnWidth: ScreenUtil().screenWidth - 100,
              onTap: onNext,
            ),
            SizedBox(height: 20.h),
            if (index == 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableText(
                    text: "Already have an account?",
                    style: appStyle(12, Kolors.kDark, FontWeight.normal),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to the login page.
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
