// // ignore_for_file: prefer_const_constructors
// import 'package:amanfashion/cmn/utils/kcolors.dart';
// import 'package:amanfashion/src/themes/controllers/theme_notifier.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shimmer/shimmer.dart';
//
// class ShimmerWidget extends StatelessWidget {
//   const ShimmerWidget({
//     super.key,
//     required this.shimmerWidth,
//     required this.shimmerHieght,
//     required this.shimmerRadius,
//   });
//
//   final double shimmerWidth;
//   final double shimmerHieght;
//   final double shimmerRadius;
//
//   @override
//   Widget build(BuildContext context) {
//     final themeData = context.read<ThemeNotifier>();
//     return SizedBox(
//       width: shimmerWidth,
//       height: shimmerHieght,
//       child: _buildShimmerLine(
//         context: context,
//         height: shimmerHieght,
//         width: shimmerHieght,
//         radius: shimmerRadius,
//       ),
//     );
//   }
//
//   Widget _buildShimmerLine({
//     required BuildContext context,
//     required double height,
//     required double width,
//     required double radius,
//   }) {
//     return Shimmer.fromColors(
//       baseColor: context.read<ThemeNotifier>().isDark
//           ? Colors.black
//           : Colors.grey[300]!,
//       highlightColor: Kolors.kGray.withOpacity(0.3),
//       child: Container(
//         height: height,
//         width: width,
//         decoration: BoxDecoration(
//           color: Color(0xFFFFFFFF),
//           borderRadius: BorderRadius.circular(radius),
//         ),
//       ),
//     );
//   }
// }
