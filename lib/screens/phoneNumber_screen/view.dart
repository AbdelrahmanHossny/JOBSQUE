import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:jobsque/core/design/customText-form.dart';

class phoneNumber_screen extends StatefulWidget {
  const phoneNumber_screen({super.key});

  @override
  State<phoneNumber_screen> createState() => _phoneNumber_screenState();
}

class _phoneNumber_screenState extends State<phoneNumber_screen> {
  String? imagepath;
  int? selectedV;
  bool status = false;
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
                        width: 75.w,
                      ),
                      Text(
                        'Phone number',
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
                  'Main phone number',
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
                    hintText: '01090887848',
                    prefix: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: DropdownButtonHideUnderline(
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
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text('Use the phone number to reset your\n password',
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  FlutterSwitch(
                      height: 26,
                      width: 48,
                      toggleSize: 22,
                      borderRadius: 30,
                      activeColor: Color(0xff3366FF),
                      activeToggleColor: Color(0xffD6E4FF),
                      inactiveColor: Color(0xffD1D5DB),
                      inactiveToggleColor: Color(0xffF4F4F5),
                      value: status,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      })
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 451),
                child: Center(
                  child: Container(
                    width: 327,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Save'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3366FF),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
