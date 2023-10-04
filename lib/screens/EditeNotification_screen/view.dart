import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/switch.dart';

class EditeNotification_screen extends StatefulWidget {
  const EditeNotification_screen({super.key});

  @override
  State<EditeNotification_screen> createState() =>
      _EditeNotification_screenState();
}

class _EditeNotification_screenState extends State<EditeNotification_screen> {
  bool issclect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
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
              width: 375.w,
              height: 37.h,
              color: Color(0xffF4F4F5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Job notification',
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontFamily: 'xfm',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.5.h,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => switchs(title: title[index]),
                separatorBuilder: (context, index) => Divider(
                      thickness: 1,
                      color: Color(0xffE5E7EB),
                      indent: 24,
                      endIndent: 24,
                    ),
                itemCount: 5),
            Container(
              width: 375.w,
              height: 37.h,
              color: Color(0xffF4F4F5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Other notification',
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontFamily: 'xfm',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.5.h,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => switchs(title: title1[index]),
                separatorBuilder: (context, index) => Divider(
                      thickness: 1,
                      color: Color(0xffE5E7EB),
                      indent: 24,
                      endIndent: 24,
                    ),
                itemCount: 3),
          ]),
    );
  }
}

List<String> title = [
  'Your Job Search Alert',
  'Job Application Update',
  'Job Application Reminders',
  'Jobs You May Be Interested In',
  'Job Seeker Updates'
];
List<String> title1 = ['Show Profile', 'All Message', 'Message Nudges'];
