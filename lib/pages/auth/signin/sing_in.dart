import 'package:easylearn/common/utils/kcolors.dart';
import 'package:easylearn/common/widgets/app_style.dart';
import 'package:easylearn/common/widgets/custom_button.dart';
import 'package:easylearn/common/widgets/email_textfield.dart';
import 'package:easylearn/common/widgets/reusable_text.dart';
import 'package:easylearn/pages/auth/widgets/custom_app_bar.dart';
import 'package:easylearn/pages/auth/widgets/third_party_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Kolors.kWhite,
          appBar: customAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(right: 50, left: 46),
                  child: thirdPartyLogin(context),
                ),
                Center(
                  child: ReusableText(
                    text: "Or use your email account to log in",
                    style: appStyle(16, Kolors.kGray, FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 40, top: 50),
                  child: ReusableText(
                    text: "Email",
                    style: appStyle(14, Kolors.kGray, FontWeight.w500),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.only(
                          left: 40,
                          right: 40,
                          top: 18,
                          bottom: 10,
                        ),
                        child: EmailTextField(
                          prefixIcon: Icon(Icons.person, color: Kolors.kGray),
                          hintText: "Enter your Email Address",
                        ),
                      ),

                      Padding(
                        padding: EdgeInsetsGeometry.only(
                          left: 40,
                          right: 40,
                          top: 18,
                        ),
                        child: ReusableText(
                          text: "Password",
                          style: appStyle(14, Kolors.kGray, FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.only(
                          left: 40,
                          right: 40,
                          top: 15,
                          bottom: 10,
                        ),
                        child: EmailTextField(
                          prefixIcon: Icon(Icons.lock, color: Kolors.kGray),
                          hintText: "Enter Your Password",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 40,
                    top: 15,
                    bottom: 20,
                  ),
                  child: ReusableText(
                    text: "Forgot Password",
                    style: appStyle(
                      16,
                      Kolors.kPrimary,
                      FontWeight.normal,
                      txtDecoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 130.h),
                Center(
                  child: CustomButton(
                    text: "L o g   I n",
                    btnHieght: 35.h,
                    btnTextStyle: appStyle(18, Kolors.kWhite, FontWeight.w700),
                    radius: 20,
                    btnWidth: ScreenUtil().screenWidth - 75,
                    btnBoxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                        color: Kolors.kGray
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),

                Center(
                  child: CustomButton(
                    btnColor: Kolors.kWhite,
                    text: "R e g i s t e r",
                    btnHieght: 35.h,
                    btnBoxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                          color: Kolors.kPrimaryLight2
                      )
                    ],
                    btnTextStyle: appStyle(
                      18,
                      Kolors.kPrimary,
                      FontWeight.w700,
                    ),
                    radius: 20,
                    btnWidth: ScreenUtil().screenWidth - 75,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
