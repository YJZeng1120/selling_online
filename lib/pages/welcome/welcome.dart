import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/pages/welcome/bloc/welcome_blocs.dart';
import '/pages/welcome/bloc/welcome_events.dart';
import '/pages/welcome/bloc/welcome_states.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WelcomeState();
  }
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(top: 34.h),
              width: 375.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView(
                    onPageChanged: (index) {
                      BlocProvider.of<WelcomeBloc>(context).add(
                        WelcomeEvents(),
                      );
                      state.page = index;
                    },
                    children: [
                      _page(
                          1,
                          context,
                          "next",
                          "First See Learning",
                          "Forget about a for of paper all knowledge in one learning!",
                          "assets/images/reading.png"),
                      _page(
                          2,
                          context,
                          "next",
                          "Connect With Everyone",
                          "Always keep in touch with your tutor & friend. Let's get connected",
                          "assets/images/boy.png"),
                      _page(
                        3,
                        context,
                        "get started",
                        "Always Fascinated Learning",
                        "Anywhere. anytime. The time is at our discretion so study",
                        "assets/images/man.png",
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 80.h,
                    child: DotsIndicator(
                      position: state.page,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: const DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        size: Size(8, 8),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget _page(
  int index,
  BuildContext context,
  String buttonName,
  String title,
  String subTitle,
  String imagePath,
) {
  return Column(
    children: [
      SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          )),
      Container(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(
          left: 30.w,
          right: 30.w,
        ),
        width: 375.w,
        child: Text(
          subTitle,
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      Container(
        width: 345.w,
        height: 50.h,
        margin: EdgeInsets.only(
          top: 100.h,
          left: 25.w,
          right: 25.w,
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(
            15.w,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      )
    ],
  );
}
