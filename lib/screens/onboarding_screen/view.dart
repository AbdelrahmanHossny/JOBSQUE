import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/CreatAccount_screen/view.dart';
import 'package:jobsque/screens/SignUp_screen/view.dart';

class onboarding_screen extends StatefulWidget {
  const onboarding_screen({super.key});

  @override
  State<onboarding_screen> createState() => _onboarding_screenState();
}

class _onboarding_screenState extends State<onboarding_screen> {
  int cuurentpage = 0;
  List<String> title1 = [
    'Find a job, and "start" ',
    'Hundreds of jobs are',
    'Get the best choice for '
  ];
  List<String> title2 = [
    ' building your career ',
    'waiting for you to join ',
    'the job you\'ve always '
  ];
  List<String> title3 = [' from now on ', 'together', 'dreamed of'];
  List<String> subtitle = [
    'Explore over 25,924 available job roles and \nupgrade your operator now.',
    'Immediately join us and start applying for \nthe job you are interested in.',
    'The better the skills you have, the greater the \ngood job opportunities for you.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/Logo.svg'),
                TextButton(
                    onPressed: () {
                      if (cuurentpage == 2) {
                        navigateto(context, CreatAccount_screen(),
                            replacement: true);
                      } else {
                        cuurentpage++;
                      }
                      setState(() {});
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 29.h,
          ),
          SizedBox(
            height: 314.h,
            child: PageView(
                physics: BouncingScrollPhysics(),
                onPageChanged: (index) {
                  cuurentpage = index;
                  setState(() {});
                },
                children: [
                  Image.asset(
                    'assets/images/Group 1 (1).png',
                    height: double.infinity,
                    width: double.infinity.w,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/image 8.png',
                    height: double.infinity,
                    width: double.infinity.w,
                  ),
                  Image.asset(
                    'assets/images/image 9.png',
                    height: double.infinity,
                    width: double.infinity.w,
                  ),
                ]),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1[cuurentpage],
                  style: TextStyle(
                      fontFamily: 'sfm',
                      color: Color(0xff111827),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  title2[cuurentpage],
                  style: TextStyle(
                      fontFamily: 'sfm',
                      color: Color(0xff111827),
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  title3[cuurentpage],
                  style: TextStyle(
                      fontFamily: 'sfm',
                      color: Color(0xff111827),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              subtitle[cuurentpage],
              style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: CircleAvatar(
                    backgroundColor:
                        Color(index == cuurentpage ? 0xff3366FF : 0xffADC8FF),
                    radius: index == cuurentpage ? 4.sp : 3.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButtom(
                  text: cuurentpage == 2 ? 'Get Started' : 'Next',
                  onPressed: () {
                    if (cuurentpage == 2) {
                      navigateto(context, SignUp_screen(), replacement: true);
                    } else {
                      cuurentpage++;
                      setState(() {});
                    }
                  },
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
