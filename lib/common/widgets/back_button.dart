import 'package:easylearn/common/utils/kcolors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key, this.color, this.size, this.onTap});

  final Color? color;
  final double? size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // final themeNotifier = context.watch<ThemeNotifier>();
    return GestureDetector(
      onTap: onTap ?? () => GoRouter.of(context).pop(),
      child: Icon(
        Icons.arrow_circle_left,
        color: Kolors.kPrimary,
        size: size ?? 24,
      ),
    );
  }
}
