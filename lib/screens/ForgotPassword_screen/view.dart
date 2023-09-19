import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/design/customTextFormField.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/CheckYourEmail_screen/view.dart';
import 'package:jobsque/screens/SignUp_screen/view.dart';

class ForgotPassword_screen extends StatefulWidget {
  const ForgotPassword_screen({super.key});

  @override
  State<ForgotPassword_screen> createState() => _ForgotPassword_screenState();
}

class _ForgotPassword_screenState extends State<ForgotPassword_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          child: ListView(
            children: [
              SizedBox(
                height: 16.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                InkWell(
                    onTap: () {
                      navigateto(context, SignUp_screen());
                    },
                    child: SvgPicture.asset('assets/icons/arrow-left.svg')),
                SvgPicture.asset('assets/icons/Logo.svg'),
              ]),
              SizedBox(
                height: 44.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reset Password',
                    style:
                        TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Enter the email address you used when you \njoined and we,ll send you instructions to reset \nyour password.',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomForm(
                  isvalid: false,
                  isvis: true,
                  keyboardType: TextInputType.emailAddress,
                  icon: 'assets/icons/sms.svg',
                  hint: 'Enter your email....'),
              SizedBox(
                height: 355.h,
              ),
              Center(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    'You remember your password',
                    style: TextStyle(
                        color: Color(0xff9CA3AF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        navigateto(context, SignUp_screen(), replacement: true);
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
                height: 20.h,
              ),
              CustomButtom(
                text: 'Request password reset',
                onPressed: () {
                  navigateto(context, CheckYourEmail_screen(),
                      replacement: true);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
