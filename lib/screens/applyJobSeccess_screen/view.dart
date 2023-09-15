import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';

class applyJobSeccess_screen extends StatefulWidget {
  const applyJobSeccess_screen({super.key});

  @override
  State<applyJobSeccess_screen> createState() => _applyJobSeccess_screenState();
}

class _applyJobSeccess_screenState extends State<applyJobSeccess_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/arrow-left (1).svg',
                  ),
                ),
                SizedBox(
                  width: 80.w,
                ),
                Text(
                  'Apply Job',
                  style: TextStyle(fontSize: 20, fontFamily: 'sfm'),
                ),
              ],
            ),
            SizedBox(
              height: 121.h,
            ),
            Image.asset(
              'assets/images/Data Ilustration.png',
              width: 173.w,
              height: 142.h,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Your data has been \nsuccessfully sent',
              style: TextStyle(
                  fontFamily: 'sfm',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  height: 1.4),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: Text(
                'You will get a message from our team, about\n the announcement of employee acceptance',
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 231.h,
            ),
            CustomButtom(
              text: 'Back to home',
              onPressed: () {},
            )
          ]),
        ),
      ),
    );
  }
}
