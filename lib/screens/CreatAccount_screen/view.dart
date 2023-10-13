import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customTextFormField.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/SignUp_screen/view.dart';
import 'package:jobsque/screens/TypeOfWork_screen/view.dart';

class CreatAccount_screen extends StatefulWidget {
  const CreatAccount_screen({super.key});

  @override
  State<CreatAccount_screen> createState() => _CreatAccount_screenState();
}

class _CreatAccount_screenState extends State<CreatAccount_screen> {
  final Namecontroller = TextEditingController();
  final Emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              InkWell(
                  onTap: () {},
                  child: InkWell(
                      onTap: () {
                        navigateto(context, SignUp_screen());
                      },
                      child: SvgPicture.asset('assets/icons/arrow-left.svg'))),
              SvgPicture.asset('assets/icons/Logo.svg'),
            ]),
            SizedBox(
              height: 39.h,
            ),
            Text(
              'Cereate Account',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            Text(
              'Please create an account to find your dream job',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6B7280)),
            ),
            SizedBox(
              height: 44.h,
            ),
            CustomForm(
                controller: Namecontroller,
                obscureText: false,
                isvalid: false,
                keyboardType: TextInputType.emailAddress,
                icon: 'assets/icons/profile.svg',
                hint: 'Username',
                isvis: true),
            SizedBox(
              height: 16.h,
            ),
            CustomForm(
                controller: Emailcontroller,
                obscureText: false,
                isvalid: false,
                keyboardType: TextInputType.emailAddress,
                icon: 'assets/icons/sms.svg',
                hint: 'Email',
                isvis: true),
            SizedBox(
              height: 16.h,
            ),
            CustomForm(
                obscureText: true,
                controller: passwordcontroller,
                isvalid: true,
                keyboardType: TextInputType.visiblePassword,
                icon: 'assets/icons/lock (1).svg',
                hint: 'Password',
                isvis: false),
            SizedBox(
              height: 139.h,
            ),
            Center(
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9CA3AF)),
                ),
                TextButton(
                    onPressed: () {
                      navigateto(context, SignUp_screen());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Color(0xff3366FF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ))
              ]),
            ),
            SizedBox(
              height: 24.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButtom(
                  text: 'Create account',
                  onPressed: () {
                    navigateto(context, TypeOfWork_screen());
                  },
                ),
              ],
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
                  'Or Sign up With Account',
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
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
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
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
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
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
