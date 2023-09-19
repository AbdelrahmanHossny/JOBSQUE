import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/ApplyJob_screen/view.dart';
import 'package:jobsque/screens/Home_screen/view.dart';

class saved_page extends StatelessWidget {
  const saved_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      navigateto(context, home_screen());
                    },
                    child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
                SizedBox(
                  width: 112.w,
                ),
                Text(
                  'Saved',
                  style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Column(children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 36,
              width: 420,
              decoration: BoxDecoration(
                color: Color(0xffE5E7EB),
              ),
              child: Center(
                child: Text(
                  '12 Job Saved',
                  style: TextStyle(
                      color: Color(0xff6B7280),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 24, left: 24),
                      child: Container(
                        width: 327.w,
                        height: 79.h,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    image[index],
                                    width: 40.w,
                                    height: 40.w,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        title[index],
                                        style: TextStyle(
                                            fontFamily: 'xfm',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Text(
                                        subtitle[index],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff374151)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 92.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top:
                                                          Radius.circular(16))),
                                          context: context,
                                          builder: (context) => Container(
                                                height: 271,
                                                // width: double.infinity,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  16),
                                                          topLeft:
                                                              Radius.circular(
                                                                  16)),
                                                  color: Color(0xffFFFFFF),
                                                ),

                                                child: Column(children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        24, 36, 24, 12),
                                                    child: InkWell(
                                                      onTap: () {
                                                        navigateto(context,
                                                            applyJob_screen());
                                                      },
                                                      child: Container(
                                                        height: 49,
                                                        width: 327,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0xffD1D5DB))),
                                                        child: Row(children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(14.0),
                                                            child: Image.asset(
                                                              'assets/images/directbox-notif.png',
                                                              cacheHeight: 20,
                                                              cacheWidth: 20,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Apply Job',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff111827),
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          SizedBox(
                                                            width: 174,
                                                          ),
                                                          Image.asset(
                                                            'assets/images/arrow-right.png',
                                                            cacheHeight: 16,
                                                            cacheWidth: 16,
                                                          ),
                                                        ]),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        24, 12, 24, 12),
                                                    child: Container(
                                                      height: 49,
                                                      width: 327,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD1D5DB))),
                                                      child: Row(children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14.0),
                                                          child: Image.asset(
                                                            'assets/images/export.png',
                                                            cacheHeight: 20,
                                                            cacheWidth: 20,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Share via...',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff111827),
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          width: 167,
                                                        ),
                                                        Image.asset(
                                                          'assets/images/arrow-right.png',
                                                          cacheHeight: 16,
                                                          cacheWidth: 16,
                                                        ),
                                                      ]),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        24, 12, 24, 12),
                                                    child: Container(
                                                      height: 49,
                                                      width: 327,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD1D5DB))),
                                                      child: Row(children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14.0),
                                                          child: Image.asset(
                                                            'assets/images/archive-minus.png',
                                                            cacheHeight: 20,
                                                            cacheWidth: 20,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Cancel save',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff111827),
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          width: 160,
                                                        ),
                                                        Image.asset(
                                                          'assets/images/arrow-right.png',
                                                          cacheHeight: 16,
                                                          cacheWidth: 16,
                                                        ),
                                                      ]),
                                                    ),
                                                  ),
                                                ]),
                                              ));
                                    },
                                    child: SvgPicture.asset(
                                        'assets/icons/more.svg'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Posted 2 days ago',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff374151)),
                                  ),
                                  SizedBox(
                                    width: 100.w,
                                  ),
                                  SvgPicture.asset('assets/icons/99.svg'),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Text(
                                    'Be an early applicant',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff374151)),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ),
                separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        width: 327.w,
                        height: 2.h,
                        color: Color(0xffE5E7EB),
                      ),
                    ),
                itemCount: 5)
          ]),
        ],
      ),
    );
  }
}

List<String> title = [
  'Senior UI Designer',
  'UI Designer',
  'Senior UI Designer',
  'Senior UX Designer',
  'Junior UI Designer'
];
List<String> subtitle = [
  'Twitter • Jakarta, Indonesia ',
  'Spectrum • Jakarta, Indonesia ',
  'VK • Yogyakarta, Indonesia ',
  'Discord • Jakarta, Indonesia ',
  'Invision • Jakarta, Indonesia '
];
List<String> image = [
  'assets/images/Background.png',
  'assets/images/Spectrum Logo (1).png',
  'assets/images/VK Logo.png',
  'assets/images/Discord Logo.png',
  'assets/images/Invision Logo.png',
];
