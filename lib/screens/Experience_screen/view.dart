import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/design/customButtom.dart';
import '../../core/design/customText-form.dart';

class Experience_screen extends StatefulWidget {
  const Experience_screen({super.key});

  @override
  State<Experience_screen> createState() => _Experience_screenState();
}

class _Experience_screenState extends State<Experience_screen> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                  'Experience',
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
              height: 606.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD1D5DB)),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Position *',
                      style: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontFamily: 'sfm',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    customform(hintText: 'Product Designer'),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Type of work',
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
                        hintText: 'Full Time',
                        suffix: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                'assets/icons/arrow-down.svg'))),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'SCompany name *',
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
                      hintText: 'Supafast Studio',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Location',
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
                        prefix: IconButton(
                            onPressed: null,
                            icon:
                                SvgPicture.asset('assets/icons/location.svg'))),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xff3366FF),
                          value: ischecked,
                          onChanged: (newbool) {
                            setState(() {
                              ischecked = newbool!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'I am currently working in this role',
                          style: TextStyle(
                              fontFamily: 'sfm',
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      ' Start Year *',
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
                      hintText: 'February 2021',
                    ),
                    SizedBox(
                      height: 16.h,
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
                      'assets/images/Group 15495.png',
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
                        'Senior UI/UX Designer ',
                        style: TextStyle(
                            fontFamily: 'sfm',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'Remote • GrowUp Studio',
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        '2019 - 2022',
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
            ),
            SizedBox(
              height: 60.h,
            )
          ]),
        ),
      ]),
    );
  }
}
