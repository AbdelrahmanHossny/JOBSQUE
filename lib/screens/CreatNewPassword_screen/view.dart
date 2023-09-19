import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customTextFormField.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/passwordSucsses_screen/view.dart';

import '../SignUp_screen/view.dart';

class CreatNewPassword_screen extends StatelessWidget {
  const CreatNewPassword_screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _password = TextEditingController();
    TextEditingController _confirmpassword = TextEditingController();
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
              InkWell
              (onTap: () {
                      navigateto(context, SignUp_screen());
                    },
                child: SvgPicture.asset('assets/icons/arrow-left.svg')),
              SvgPicture.asset('assets/icons/Logo.svg'),
            ]),
            SizedBox(
              height: 39.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create new password',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Set your new password so you can login and \nacces Jobsque',
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
              controller: _password,
              isvalid: true,
              isvis: false,
              keyboardType: TextInputType.visiblePassword,
              icon: 'assets/icons/lock (1).svg',
              hint: 'Enter Your New Password ....',
            ),
            SizedBox(
              height: 57.h,
            ),
            CustomForm(
                controller: _confirmpassword,
                isvalid: true,
                isvis: false,
                keyboardType: TextInputType.visiblePassword,
                icon: 'assets/icons/lock (1).svg',
                hint: 'Enter Your New Password ....'),
            SizedBox(
              height: 299.h,
            ),
            CustomButtom(
              text: 'Reset password',
              onPressed: () {
                navigateto(context, PasswordSucssess_screen(),
                    replacement: true);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
