import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/design/customprocess.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class completProfile_screen extends StatefulWidget {
  const completProfile_screen({super.key});

  @override
  State<completProfile_screen> createState() => _completProfile_screenState();
}

class _completProfile_screenState extends State<completProfile_screen> {
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
                  width: 66.5.w,
                ),
                Text(
                  'Complete Profile',
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
          height: 33.h,
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.round,
          radius: 60.0,
          lineWidth: 10.0,
          percent: .5,
          center: Text(
            "50%",
            style: TextStyle(
                color: Color(0xff3366FF),
                fontFamily: 'xfm',
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          progressColor: Color(0xff3366FF),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          '2/4 Completed',
          style: TextStyle(
              color: Color(0xff3366FF),
              fontFamily: 'xfm',
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Complete your profile before applying for a job',
          style: TextStyle(
              color: Color(0xff6B7280),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 34.h,
        ),
        ListView.separated(
            separatorBuilder: (context, index) => Column(
                  children: [
                    Container(
                      width: 1,
                      height: 20,
                      color: Color(0xffD1D5DB),
                    ),
                  ],
                ),
            itemCount: 4,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                customproccess(title: title[index], subtitle: subtitle[index]))
      ]),
    );
  }
}

List<String> title = [
  'Personal Details',
  'Education',
  'Experience',
  'Portfolio'
];
List<String> subtitle = [
  'Full name, email, phone number, and your\n address',
  'Enter your educational history to be considered \nby the recruiter',
  'Enter your work experience to be considered \nby the recruiter',
  'Create your portfolio. Applying for various \ntypes of jobs is easier.'
];
