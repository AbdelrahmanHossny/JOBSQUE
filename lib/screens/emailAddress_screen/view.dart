import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/design/customText-form.dart';

import '../../core/design/customButtom.dart';

class emailAddress_screen extends StatefulWidget {
  const emailAddress_screen({super.key});

  @override
  State<emailAddress_screen> createState() => _emailAddress_screenState();
}

class _emailAddress_screenState extends State<emailAddress_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 16.h,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                              'assets/icons/arrow-left (1).svg')),
                      SizedBox(
                        width: 78.w,
                      ),
                      Text(
                        'Email address',
                        style: TextStyle(
                            fontFamily: 'sfm',
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(29, 44, 0, 8),
                child: Text(
                  'Main e-mail address',
                  style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Container(
                  height: 56,
                  width: 327,
                  child: customform(
                      hintText: 'rafifdian12@gmail.com',
                      prefix: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/sms1.svg'))),
                ),
              ),
              SizedBox(
                height: 511.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomButtom(
                      text: 'Save',
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
