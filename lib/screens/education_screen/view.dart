import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customText-form.dart';

class Education_screen extends StatefulWidget {
  const Education_screen({super.key});

  @override
  State<Education_screen> createState() => _Education_screenState();
}

class _Education_screenState extends State<Education_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
                SizedBox(
                  width: 95.w,
                ),
                Text(
                  'Education',
                  style: TextStyle(
                      fontFamily: 'sfm',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
              width: 327.w,
              height: 484.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD1D5DB)),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'University * ',
                      style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontFamily: 'sfm',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    customform(hintText: 'Northern Michigan University '),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Title',
                      style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontFamily: 'sfm',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    customform(hintText: 'Bachelor'),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Start Year',
                      style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontFamily: 'sfm',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    customform(
                        hintText: 'December 2019',
                        suffix: IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset('assets/icons/calendar.svg'))),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'End Year',
                      style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontFamily: 'sfm',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    customform(
                        hintText: 'December 2022',
                        suffix: IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset('assets/icons/calendar.svg'))),
                    SizedBox(
                      height: 32.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomButtom(
                          text: 'Save',
                          onPressed: () {},
                        ),
                      ],
                    )
                  ]),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
              width: 329.w,
              height: 99.h,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffD1D5DB),
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/Logo (1).png',
                      width: 44.w,
                      height: 44.w,
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The University of Arizona ',
                        style: TextStyle(
                            fontFamily: 'sfm',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'Bachelor of Art and Design',
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        '2012 - 2015',
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 34.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/edit-2.svg'))
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
