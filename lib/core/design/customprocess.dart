import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class customproccess extends StatefulWidget {
  final String title;
  final String subtitle;
  const customproccess(
      {super.key, required this.title, required this.subtitle});

  @override
  State<customproccess> createState() => _customproccessState();
}

class _customproccessState extends State<customproccess> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 327.w,
            height: 85.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(0xffD1D5DB),
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/icons/tick-circle22.svg'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontFamily: 'xfm',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        widget.subtitle,
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrow-right55.svg',
                    width: 20,
                    height: 20,
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
