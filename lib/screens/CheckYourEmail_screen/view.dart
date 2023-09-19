import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/CreatNewPassword_screen/view.dart';

class CheckYourEmail_screen extends StatelessWidget {
  const CheckYourEmail_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 160.h,
            ),
            Image.asset(
              'assets/images/Email Ilustration.png',
              width: 173.w,
              height: 142.h,
            ),
            SizedBox(
              height: 24.h,
            ),
            Column(
              children: [
                Text(
                  'Check your Email',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'We have sent a reset password to your email ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6B7280)),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'address',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6B7280)),
                ),
              ],
            ),
            SizedBox(
              height: 300.h,
            ),
            CustomButtom(
              text: 'Open email app',
              onPressed: () {
                navigateto(context, CreatNewPassword_screen(),
                    replacement: true);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
