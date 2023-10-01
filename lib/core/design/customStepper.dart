import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class customStepper extends StatelessWidget {
  int index;
  int currentIndex;
  VoidCallback onTap;
  bool islast;
  customStepper({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.islast = false,
  });

  @override
  Widget build(BuildContext context) {
    return islast
        ? Row(children: [
            Column(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: SvgPicture.asset(currentIndex >= index
                          ? 'assets/icons/tick-circle.svg'
                          : image[index]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  list[index],
                  style: TextStyle(
                      color: Color(
                          currentIndex >= index ? 0xff3366FF : 0xff111827),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ])
        : Row(children: [
            Column(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: SvgPicture.asset(currentIndex >= index
                          ? 'assets/icons/tick-circle.svg'
                          : image[index]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  list[index],
                  style: TextStyle(
                      color: Color(
                          currentIndex >= index ? 0xff3366FF : 0xff111827),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              width: 20.5.w,
            ),
            Container(
              width: 7,
              height: 2,
              color: Color(currentIndex >= index ? 0xff3366FF : 0xffD1D5DB),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              width: 7,
              height: 2,
              color: Color(currentIndex >= index ? 0xff3366FF : 0xffD1D5DB),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              width: 7,
              height: 2,
              color: Color(currentIndex >= index ? 0xff3366FF : 0xffD1D5DB),
            ),
            SizedBox(
              width: 2.h,
            ),
            SizedBox(
              width: 20.5.w,
            ),
          ]);
  }
}

List<String> list = ['Biodata', 'Type of work', 'Upload portfolio'];
List<String> image = [
  'assetsicons/Ellipse.svg',
  'assets/icons/1 (1).svg',
  'assets/icons/1.svg',
];
