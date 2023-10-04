import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HelpCenter_screen extends StatelessWidget {
  const HelpCenter_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
                      child:
                          SvgPicture.asset('assets/icons/arrow-left (1).svg')),
                  SizedBox(
                    width: 86.5.w,
                  ),
                  Text(
                    'Help Center ',
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
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
                height: 48,
                width: 327,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'What can we help?',
                      hintStyle: TextStyle(
                          color: Color(0xff9CA3AF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xffD1D5DB))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xffD1D5DB))),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/search-normal.svg',
                        ),
                      )),
                )),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 221,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffD1D5DB))),
              child: Column(children: [
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                            color: Color(0xff111827),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgPicture.asset('assets/icons/arrow-up.svg'),
                    )
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.225),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 53,
            width: 327,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffD1D5DB))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/icons/arrow-down (1).svg'),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 53,
            width: 327,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffD1D5DB))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/icons/arrow-down (1).svg'),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 53,
            width: 327,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffD1D5DB))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/icons/arrow-down (1).svg'),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 53,
            width: 327,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffD1D5DB))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Lorem ipsum dolor sit amet',
                    style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/icons/arrow-down (1).svg'),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
        ]),
      ),
    );
  }
}
