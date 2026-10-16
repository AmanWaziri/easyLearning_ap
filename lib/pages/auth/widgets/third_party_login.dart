import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// buildcontext is added for accessing bloc
Widget thirdPartyLogin(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _reusableIcon("google"),
        _reusableIcon("apple"),
        _reusableIcon("facebook")

      ]
    ),
  );
}
Widget _reusableIcon(String iconName){
return GestureDetector(
  onTap: (){},
  child: SizedBox(
    width: 40.w,
    height: 40.h,
    child: Image.asset("assets/icons/$iconName.png"),
  ),
);
}