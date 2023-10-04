import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Terms_screen extends StatelessWidget {
  const Terms_screen({super.key});

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
                  width: 53.5.w,
                ),
                Text(
                  'Terms & Conditions ',
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
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Lorem ipsum dolor',
            style: TextStyle(
                color: Color(0xff111827),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
              height: 220,
              width: 327,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.3),
              )),
        ),
        SizedBox(height: 17),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Lorem ipsum dolor',
            style: TextStyle(
                color: Color(0xff111827),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
              'Nunc quis bibendum orci. Donec feugiat massa mi, at\n hendrerit mauris rutrum at. Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. ',
              style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.3)),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Text(
                'Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                style: TextStyle(
                    height: 1.3,
                    color: Color(0xff6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 144,
            width: 327,
            decoration: BoxDecoration(color: Color(0xffF4F4F5)),
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
            style: TextStyle(
                height: 1.3,
                color: Color(0xff6B7280),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        )
      ]),
    );
  }
}
