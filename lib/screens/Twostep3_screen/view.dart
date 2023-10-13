import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/design/customText-form.dart';
import 'package:jobsque/core/design/customTextFormField.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/pincode_screen/view.dart';

class TwoStep3_screen extends StatefulWidget {
  const TwoStep3_screen({super.key});

  @override
  State<TwoStep3_screen> createState() => _TwoStep3_screenState();
}

class _TwoStep3_screenState extends State<TwoStep3_screen> {
  TextEditingController? controller;
  String? imagepath;
  int? selectedV;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 16.h,
              ),
              SafeArea(
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                            'assets/icons/arrow-left (1).svg')),
                    SizedBox(
                      width: 46.5.w,
                    ),
                    Text(
                      'Two-step verification',
                      style: TextStyle(
                          fontFamily: 'sfm',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36),
              Text(
                'Add phone number',
                style: TextStyle(
                    fontFamily: 'xfm',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              SizedBox(height: 8),
              Text(
                'We will send a verification code to this number',
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              customform(
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
                          child: Image.asset('assets/images/Saudi Arabia.png',
                              width: 24.w, height: 18.h),
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
                height: 20,
              ),
              Text(
                'Enter your password',
                style: TextStyle(
                    fontFamily: 'sfm',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomForm(
                  obscureText: true,
                  controller: controller,
                  isvalid: true,
                  keyboardType: TextInputType.visiblePassword,
                  icon: 'assets/icons/lock (1).svg',
                  hint: 'Password',
                  isvis: false),
              SizedBox(
                height: 382,
              ),
              Center(
                child: Container(
                  width: 327,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      navigateto(context, PinCode_screen());
                    },
                    child: Text('Send Code'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3366FF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
