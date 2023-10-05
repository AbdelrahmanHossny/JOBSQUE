import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/Twostep1_screen/view.dart';
import 'package:jobsque/screens/changePassword_screen/view.dart';
import 'package:jobsque/screens/emailAddress_screen/view.dart';
import 'package:jobsque/screens/phoneNumber_screen/view.dart';

class Security_screen extends StatefulWidget {
  const Security_screen({super.key});

  @override
  State<Security_screen> createState() => _Security_screenState();
}

class _Security_screenState extends State<Security_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                  width: 88.w,
                ),
                Text(
                  'Notification',
                  style: TextStyle(
                      fontFamily: 'sfm',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 3, 8),
            child: Text(
              'Accont access',
              style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          height: 36,
          width: 420,
          decoration: BoxDecoration(color: Color(0xffE5E7EB)),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            navigateto(context, emailAddress_screen());
          },
          child: ListTile(
            title: Text(
              'Email address',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Wrap(children: [
              Text(
                'rafifdian12@gmail.com',
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 12,
              ),
              SvgPicture.asset('assets/icons/arrow-right1.svg'),
            ]),
          ),
        ),
        Divider(
          color: Color(0xffD1D5DB),
          thickness: 1,
          indent: 24,
          endIndent: 24,
        ),
        InkWell(
          onTap: () {
            navigateto(context, phoneNumber_screen());
          },
          child: ListTile(
            title: Text('Phone number',
                style: TextStyle(
                    color: Color(0xff111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
            trailing: SvgPicture.asset('assets/icons/arrow-right1.svg'),
          ),
        ),
        Divider(
          color: Color(0xffD1D5DB),
          thickness: 1,
          indent: 24,
          endIndent: 24,
        ),
        InkWell(
          onTap: () {
            navigateto(context, CahngePassword_screen());
          },
          child: ListTile(
            title: Text('Change password',
                style: TextStyle(
                    color: Color(0xff111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
            trailing: SvgPicture.asset('assets/icons/arrow-right1.svg'),
          ),
        ),
        Divider(
          color: Color(0xffD1D5DB),
          thickness: 1,
          indent: 24,
          endIndent: 24,
        ),
        InkWell(
          onTap: () {
            navigateto(context, TwoStep1_screen());
          },
          child: ListTile(
            title: Text(
              'Two-step verification',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Wrap(children: [
              Text(
                'Non active',
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 12,
              ),
              SvgPicture.asset('assets/icons/arrow-right1.svg'),
            ]),
          ),
        ),
        Divider(
          color: Color(0xffD1D5DB),
          thickness: 1,
          indent: 24,
          endIndent: 24,
        ),
        ListTile(
          title: Text('Face ID',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset('assets/icons/arrow-right1.svg'),
        ),
        Divider(
          color: Color(0xffD1D5DB),
          thickness: 1,
          indent: 24,
          endIndent: 24,
        ),
      ]),
    );
  }
}
