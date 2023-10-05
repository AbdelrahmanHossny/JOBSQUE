import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customTextFormField.dart';

class CahngePassword_screen extends StatefulWidget {
  const CahngePassword_screen({super.key});

  @override
  State<CahngePassword_screen> createState() => _CahngePassword_screenState();
}

class _CahngePassword_screenState extends State<CahngePassword_screen> {
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      child:
                          SvgPicture.asset('assets/icons/arrow-left (1).svg')),
                  SizedBox(
                    width: 59.5.w,
                  ),
                  Text(
                    'Change password',
                    style: TextStyle(
                        fontFamily: 'sfm',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 44),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Enter your old password',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomForm(
                controller: controller,
                isvalid: true,
                keyboardType: TextInputType.visiblePassword,
                icon: 'assets/icons/lock (1).svg',
                hint: 'Password',
                isvis: false),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Enter your new password',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomForm(
                controller: controller,
                isvalid: true,
                keyboardType: TextInputType.visiblePassword,
                icon: 'assets/icons/lock (1).svg',
                hint: 'Password',
                isvis: false),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Confirm your new password',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomForm(
                controller: controller,
                isvalid: true,
                keyboardType: TextInputType.visiblePassword,
                icon: 'assets/icons/lock (1).svg',
                hint: 'Password',
                isvis: false),
          ),
          SizedBox(height: 301.h),
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
