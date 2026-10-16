import 'package:easylearn/common/utils/kcolors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigator();
    super.initState();
  }
  _navigator() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {
        GoRouter.of(context).go('/welcome');
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: themeData.isDark? Kolors.kDark: Kolors.kWhite,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height ,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image:
                  AssetImage("assets/images/splash.png")
                  ,
            ),
          ),
        ),
      ),
    );
  }
}
