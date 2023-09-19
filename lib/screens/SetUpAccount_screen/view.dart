import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/SignUp_screen/view.dart';

class SetUpAccount_screen extends StatelessWidget {
  const SetUpAccount_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(children: [
          SizedBox(
            height: 16.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SvgPicture.asset('assets/icons/arrow-left.svg'),
            SvgPicture.asset('assets/icons/Logo.svg'),
          ]),
          SizedBox(
            height: 97.h,
          ),
          Image.asset(
            'assets/images/Success Account Ilustration.png',
            width: 173,
            height: 142,
          ),
          SizedBox(
            height: 24.h,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Your account has been set up!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'We have customized feeds according to your ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
                Text(
                  'preferences',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 295.h,
          ),
          CustomButtom(
            text: 'Get Started',
            onPressed: () {
              navigateto(context, SignUp_screen());
            },
          )
        ]),
      ),
    );
  }
}
