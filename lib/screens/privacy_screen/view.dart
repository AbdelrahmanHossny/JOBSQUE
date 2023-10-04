import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Privacy_screen extends StatelessWidget {
  const Privacy_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 16.h,
          ),
          SafeArea(
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
                SizedBox(
                  width: 78.5.w,
                ),
                Text(
                  'Privacy Policy ',
                  style: TextStyle(
                      fontFamily: 'sfm',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Your privacy is important',
            style: TextStyle(
                color: Color(0xff111827),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
            style: TextStyle(
                color: Color(0xff6B7280),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.5),
          ),
          SizedBox(height: 12),
          Text(
            'Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
            style: TextStyle(
                color: Color(0xff6B7280),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.5),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Data controllers and contract\n partners',
            style: TextStyle(
                color: Color(0xff111827),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
            style: TextStyle(
                color: Color(0xff6B7280),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.5),
          )
        ]),
      ),
    );
  }
}
