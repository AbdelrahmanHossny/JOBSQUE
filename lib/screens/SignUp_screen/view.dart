import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customTextFormField.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/CreatAccount_screen/view.dart';
import 'package:jobsque/screens/ForgotPassword_screen/view.dart';
import 'package:jobsque/screens/Home_screen/view.dart';

class SignUp_screen extends StatefulWidget {
  const SignUp_screen({super.key});

  @override
  State<SignUp_screen> createState() => _SignUp_screenState();
}

class _SignUp_screenState extends State<SignUp_screen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = new GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formState,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(children: [
            SizedBox(
              height: 16.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              SvgPicture.asset('assets/icons/Logo.svg'),
            ]),
            SizedBox(
              height: 44.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Please login to find your dream job',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
              ],
            ),
            SizedBox(
              height: 44.h,
            ),
            CustomForm(
                isvalid: false,
                keyboardType: TextInputType.emailAddress,
                icon: 'assets/icons/profile.svg',
                hint: 'Username',
                isvis: true),
            SizedBox(
              height: 16.h,
            ),
            CustomForm(
                isvalid: false,
                keyboardType: TextInputType.visiblePassword,
                icon: 'assets/icons/lock (1).svg',
                hint: 'Password',
                isvis: false),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 16.w,
                      height: 16.w,
                      child: Transform.scale(
                        scale: .8,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          activeColor: Color(0xff3366FF),
                          value: isChecked,
                          onChanged: (newvalue) {
                            setState(() {
                              isChecked = newvalue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      'Remember me',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                TextButton(
                    onPressed: () {
                      navigateto(context, ForgotPassword_screen());
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3366FF)),
                    ))
              ],
            ),
            SizedBox(
              height: 173.h,
            ),
            Center(
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  'Dont’t have an account?',
                  style: TextStyle(
                      color: Color(0xff9CA3AF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      navigateto(context, CreatAccount_screen());
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Color(0xff3366FF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ))
              ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButtom(
              text: 'Login',
              onPressed: () {
                navigateto(context, home_screen(), replacement: true);
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  color: Color(0xffD1D5DB),
                  width: 64.5.w,
                  height: 1,
                ),
                SizedBox(
                  width: 25.w,
                ),
                Text(
                  'Or Login With Account',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
                SizedBox(
                  width: 25.w,
                ),
                Container(
                  color: Color(0xffD1D5DB),
                  width: 64.5.w,
                  height: 1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 154.w,
                  height: 46.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD1D5DB)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/google.svg'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ]),
                ),
                Container(
                  width: 154.w,
                  height: 46.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD1D5DB)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/Facebook.svg'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ]),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
