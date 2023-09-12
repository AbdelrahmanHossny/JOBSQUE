import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/core/design/customButtom.dart';

class PasswordSucssess_screen extends StatelessWidget {
  const PasswordSucssess_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 152.h,
            ),
            Image.asset(
              'assets/images/Password Succesfully Ilustration.png',
              width: 173,
              height: 142,
            ),
            SizedBox(
              height: 24.h,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Password changed ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  'succesfully! ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Column(
              children: [
                Text(
                  ' Your password has been changed successfully, ',
                  style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'we will let you know if there are more problems ',
                  style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'with your account',
                  style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 219.h,
            ),
            CustomButtom(
              text: 'Open email app',
              onPressed: () {},
            )
          ]),
        ),
      ),
    );
  }
}
