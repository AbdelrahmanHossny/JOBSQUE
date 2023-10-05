import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:jobsque/core/design/customButtom.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/Twostep3_screen/view.dart';

class TwoStep2_screen extends StatefulWidget {
  const TwoStep2_screen({super.key});

  @override
  State<TwoStep2_screen> createState() => _TwoStep2_screenState();
}

class _TwoStep2_screenState extends State<TwoStep2_screen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 36, 24, 32),
          child: Container(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text('Secure your account with\n two-step verification',
                    style: TextStyle(
                        height: 1.2,
                        color: Color(0xff6B7280),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                width: 64,
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
            ]),
            height: 66,
            width: 327,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffD1D5DB))),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Text(
            'Select a verification method',
            style: TextStyle(
                color: Color(0xff111827),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Container(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Telephone number (SMS)',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                width: 110,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: SvgPicture.asset('assets/icons/arrow-down22.svg'))
            ]),
            height: 56,
            width: 327,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffD1D5DB))),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
              'Note : Turning this feature will sign you out anywhere\n you’re currently signed in. We will then require you to\n enter a verification code the first time you sign with a\n new device or Joby mobile application.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6B7280))),
        ),
        SizedBox(
          height: 325.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButtom(
                text: 'Next',
                onPressed: () {
                  navigateto(context, TwoStep3_screen());
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
