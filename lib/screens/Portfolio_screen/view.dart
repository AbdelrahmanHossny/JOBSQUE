import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Portofolio_screen extends StatelessWidget {
  const Portofolio_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
              SizedBox(
                width: 102.w,
              ),
              Text(
                'Portfolio',
                style: TextStyle(
                    fontFamily: 'sfm',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ]),
            SizedBox(
              height: 36.h,
            ),
            Text(
              'Add portfolio here',
              style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 16.h,
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              strokeWidth: 2,
              dashPattern: [5, 5, 5, 5],
              radius: Radius.circular(8),
              color: Color(0xff3366FF),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Container(
                    child: Column(children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                              'assets/icons/document-upload.svg')),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Upload your other file',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111827)),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Max. file size 10 MB',
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Row(children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 109),
                                child: SvgPicture.asset(
                                    'assets/icons/export.svg')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Add file',
                              style: TextStyle(
                                  color: Color(0xff3366FF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ]),
                          height: 42,
                          width: 295,
                          decoration: BoxDecoration(
                              color: Color(0xffECF2FF),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Color(0xff3366FF))),
                        ),
                      )
                    ]),
                    height: 223,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffECF2FF),
                        borderRadius: BorderRadius.circular(8)),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
