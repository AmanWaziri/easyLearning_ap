// import 'package:amanfashion/common/utils/kcolors.dart';
// import 'package:amanfashion/common/widgets/app_style.dart';
// import 'package:amanfashion/common/widgets/reusable_text.dart';
// import 'package:amanfashion/src/addresses/hooks/fetch_default.dart';
// import 'package:amanfashion/src/home/widgets/notification_widget.dart';
// import 'package:amanfashion/src/themes/controllers/theme_notifier.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
//
// class CustomAppBar extends HookWidget {
//   CustomAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     print("CustomAppBar rebuilt");
//     var themeNotifier = context.read<ThemeNotifier>();
//     final rslt = fetchDefaultAddress();
//     final adrs = rslt.address;
//
//     print("address object: ${rslt.address}");
//     print("address text: ${rslt.address?.address}");
//     print("isLoading: ${rslt.isLoading}");
//     print("error: ${rslt.error}");
//
//     return AppBar(
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 3.0),
//             child: ReusableText(
//               text: "Location",
//               style: appStyle(
//                 12,
//                 themeNotifier.isDark ? Kolors.kWhite : Kolors.kDark,
//                 FontWeight.normal,
//               ),
//             ),
//           ),
//           SizedBox(height: 1.h),
//           Row(
//             children: [
//               Icon(
//                 Ionicons.location,
//                 size: 16,
//                 color: themeNotifier.isDark ? Colors.white : Kolors.kPrimary,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 6.0),
//                 child: SizedBox(
//                   width: ScreenUtil().screenWidth * 0.7,
//                   child: Expanded(
//                     child: Text(
//                       adrs?.address ?? "Please select a location",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: appStyle(
//                         14,
//                         themeNotifier.isDark ? Kolors.kWhite : Kolors.kDark,
//                         FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       actions: [NotificationWidget()],
//       bottom: PreferredSize(
//         preferredSize: Size.fromHeight(55.h),
//         child: GestureDetector(
//           onTap: () {
//             context.push('/search');
//           },
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: 6.w),
//                   child: Container(
//                     height: 40.h,
//                     width: ScreenUtil().screenWidth - 88,
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 0.5, color: Kolors.kGrayLight),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                            Icon(
//                             Ionicons.search,
//                             size: 20,
//                             color: themeNotifier.isDark
//                                 ? Kolors.kPrimaryLight2
//                                 : Kolors.kPrimaryLight,
//                           ),
//                           SizedBox(width: 20.w),
//                           ReusableText(
//                             text: "Search Products",
//                             style: appStyle(
//                               14,
//                               themeNotifier.isDark
//                                   ? Kolors.kGrayLight
//                                   : Kolors.kGray,
//                               FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 40.h,
//                   width: 40.w,
//                   decoration: BoxDecoration(
//                     color: themeNotifier.isDark
//                         ? Kolors.kPrimaryLight
//                         : Kolors.kPrimary,
//                     borderRadius: BorderRadius.circular(9),
//                   ),
//                   child: const Icon(
//                     FontAwesome.sliders,
//                     color: Kolors.kWhite,
//                     size: 20,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
