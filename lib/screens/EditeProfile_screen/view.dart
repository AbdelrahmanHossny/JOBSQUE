import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customText-form.dart';

class EditeProfile_screen extends StatefulWidget {
  const EditeProfile_screen({super.key});

  @override
  State<EditeProfile_screen> createState() => _EditeProfile_screenState();
}

class _EditeProfile_screenState extends State<EditeProfile_screen> {
  int? selectedV;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/arrow-left (1).svg'),
                  SizedBox(
                    width: 66.5.w,
                  ),
                  Text(
                    'Complete Profile',
                    style: TextStyle(
                        fontFamily: 'sfm',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 45,
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/Profile.png',
                      width: 90.w,
                      height: 90.h,
                    ),
                    Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/camera.svg')),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change  Photo',
                      style: TextStyle(
                          color: Color(0xff3366FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'fsm'),
                    )),
              ),
              SizedBox(
                height: 25.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  customform(hintText: 'Rafif Dian Axelingga'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Bio',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  customform(hintText: 'Senior UI/UX Designer'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  customform(hintText: 'Ranjingan, Wangon, Wasington City'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'No.Handphone',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'fxm'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  SizedBox(
                    height: 57,
                    child: customform(
                      hintText: '01090887848',
                      prefix: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: selectedV,
                          hint: Image.asset('assets/images/FLAG.png',
                              width: 24.w, height: 18.h),
                          items: [
                            DropdownMenuItem(
                              child: Image.asset(
                                'assets/images/England.png',
                                width: 24.w,
                                height: 18.h,
                              ),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Image.asset('assets/images/FLAG.png',
                                  width: 24.w, height: 18.h),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Image.asset('assets/images/France.png',
                                  width: 24.w, height: 18.h),
                              value: 3,
                            ),
                            DropdownMenuItem(
                              child: Image.asset('assets/images/Germany.png',
                                  width: 24.w, height: 18.h),
                              value: 4,
                            ),
                            DropdownMenuItem(
                              child: Image.asset('assets/images/Portugal.png',
                                  width: 24.w, height: 18.h),
                              value: 5,
                            ),
                            DropdownMenuItem(
                              child: Image.asset(
                                  'assets/images/Saudi Arabia.png',
                                  width: 24.w,
                                  height: 18.h),
                              value: 6,
                            ),
                          ],
                          onChanged: (value) {
                            selectedV = value;
                            setState(() {
                              selectedV = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 83.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomButtom(
                        text: 'Save',
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
