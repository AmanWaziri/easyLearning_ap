import 'package:easylearn/common/utils/kcolors.dart';
import 'package:easylearn/common/utils/kstrings.dart';
import 'package:easylearn/pages/welcome/bloc/welcome_bloc.dart';
import 'package:easylearn/pages/welcome/bloc/welcome_event.dart';
import 'package:easylearn/pages/welcome/bloc/welcome_state.dart';
import 'package:easylearn/pages/welcome/widgets/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController pageController = PageController();

  void goToPage(int index) {
    if (!pageController.hasClients) return;
    if (index < 2 || index == 2) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      GoRouter.of(context).go("/signIn");
    }
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) => Container(
            width: 375.w,
            child: Stack(
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    state.pageIndex = index;
                    BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                    print(" the index valuse is : ${index}");
                  },
                  children: [
                    WelcomeScreen(
                      title: "First See Easy Learning",
                      subTitle: "Forget about for of paper on easy learning app. It provides you with excelllent courses with well expert instructors. ",
                      btnText: "Next",
                      index: state.pageIndex,
                      image: "assets/images/reading.png",
                      onNext: () => goToPage(1),
                    ),
                    WelcomeScreen(
                      title: "First See Easy Learning",
                      subTitle:
                          "Easy Learning App can provide you any learning oppertunity you.Now, start to find you course and tutor!",
                      btnText: "Next",
                      index: state.pageIndex,
                      image: "assets/images/learning.png",
                      onNext: () => goToPage(2),
                    ),
                    WelcomeScreen(
                      title: "First See Easy Learning",
                      subTitle: "Find your interest with us on Easy Learning App. Just look for your attraction, find it and then utilize your time to have bright future.",
                      btnText: "Let's Get Started",
                      index: state.pageIndex,
                      image: "assets/images/success.png",
                      // imageFit: BoxFit.fill,
                      onNext: () => goToPage(3),
                    ),
                  ],
                ),
                // state.pageIndex == 2
                //     ? const SizedBox.shrink()
                //     :
                Positioned(
                  bottom: 50.h,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    width: ScreenUtil().screenWidth,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        state.pageIndex != 0
                            ? GestureDetector(
                                onTap: () {
                                  pageController.animateToPage(
                                    state.pageIndex - 1,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: const Icon(
                                  // AntDesign.rightcircleo,
                                  Icons.keyboard_arrow_left,
                                  color: Kolors.kPrimary,
                                  size: 30,
                                ),
                              )
                            : SizedBox.shrink(),
                        SizedBox(
                          width: ScreenUtil().screenWidth * 0.7,
                          height: 50.h,
                          // child: DotsIndicator(
                          //   dotsCount: 3,
                          //   position: state.pageIndex.toDouble(),
                          //   decorator: DotsDecorator(
                          //     activeColor: Kolors.kPrimary,
                          //
                          //   ),
                          // ),
                          child: PageViewDotIndicator(
                            currentItem: state.pageIndex,
                            // context.watch<OnboardingNotifier>().selectedPage,
                            count: 3,
                           size: Size.square(16.0),
                           //  unselectedSize: Size(12, 12),
                            unselectedColor: Colors.black26,
                            selectedColor: Kolors.kPrimary,
                            duration: const Duration(milliseconds: 200),
                            onItemClicked: (index) {
                              pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                          ),
                        ),
                        state.pageIndex == 2
                            ? SizedBox.shrink()
                            : GestureDetector(
                                onTap: () {
                                  pageController.animateToPage(
                                    state.pageIndex + 1,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: const Icon(
                                  // AntDesign.rightcircleo,
                                  Icons.keyboard_arrow_right,
                                  color: Kolors.kPrimary,
                                  size: 30,
                                ),
                              ),
                      ],
                    ),
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
