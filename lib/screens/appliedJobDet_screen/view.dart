import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/design/customButtom.dart';
import '../../core/design/customStepper.dart';
import '../../core/design/customText-form.dart';

class AppliedJobDet_screen extends StatefulWidget {
  const AppliedJobDet_screen({super.key});

  @override
  State<AppliedJobDet_screen> createState() => _AppliedJobDet_screenState();
}

class _AppliedJobDet_screenState extends State<AppliedJobDet_screen> {
  int sclect = 0;
  int? selectedV;
  int _cuurentindex = 0;
  PageController _pageController = PageController();
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButtom(
              text: _cuurentindex == 2 ? 'Submit' : 'Next',
              onPressed: () {
                setState(() {
                  if (_cuurentindex < 2) {
                    _cuurentindex++;
                  }
                });
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {
                    if (_cuurentindex > 0) {
                      _cuurentindex--;
                    }
                    setState(() {});
                  },
                  child: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
              SizedBox(
                width: 85.5.w,
              ),
              Text(
                'Applied Job',
                style: TextStyle(
                    fontFamily: 'sfm',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/Spectrum Logo.png',
                width: 48.w,
                height: 48.w,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'UI/UX Designer',
                style: TextStyle(
                    fontFamily: 'sfm',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Spectrum • Jakarta, Indonesia ',
                style: TextStyle(
                    color: Color(0xff374151),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  children: [
                    customStepper(
                      currentIndex: _cuurentindex,
                      index: 0,
                      onTap: () {},
                    ),
                    customStepper(
                      currentIndex: _cuurentindex,
                      index: 1,
                      onTap: () {},
                    ),
                    customStepper(
                      islast: true,
                      currentIndex: _cuurentindex,
                      index: 2,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              _cuurentindex == 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Biodata',
                          style: TextStyle(
                              fontFamily: 'sfm',
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Fill in your bio data correctly',
                          style: TextStyle(
                              color: Color(0xff6B7280),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Full Name',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFF472B))),
                        ])),
                        SizedBox(
                          height: 8.h,
                        ),
                        customform(
                          hintText: 'Rafif Dian Axelingga',
                          prefix: IconButton(
                            onPressed: null,
                            icon: SvgPicture.asset(
                              'assets/icons/frame.svg',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Email',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFF472B))),
                        ])),
                        SizedBox(
                          height: 8.h,
                        ),
                        customform(
                          hintText: 'rafifdian12@gmail.com',
                          prefix: IconButton(
                            onPressed: null,
                            icon: SvgPicture.asset(
                              'assets/icons/sms (1).svg',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'No.Handphone',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFF472B))),
                        ])),
                        SizedBox(
                          height: 8.h,
                        ),
                        customform(
                          hintText: '0100-666-7234',
                          prefix: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: selectedV,
                                hint: Image.asset('assets/images/FLAG.png',
                                    width: 24.w, height: 18.h),
                                items: [
                                  DropdownMenuItem(
                                    child: Image.asset(
                                      'assets/images/England.png',
                                      width: 24.w,
                                      height: 18.h,
                                    ),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Image.asset('assets/images/FLAG.png',
                                        width: 24.w, height: 18.h),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                    child: Image.asset(
                                        'assets/images/France.png',
                                        width: 24.w,
                                        height: 18.h),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(
                                    child: Image.asset(
                                        'assets/images/Germany.png',
                                        width: 24.w,
                                        height: 18.h),
                                    value: 4,
                                  ),
                                  DropdownMenuItem(
                                    child: Image.asset(
                                        'assets/images/Portugal.png',
                                        width: 24.w,
                                        height: 18.h),
                                    value: 5,
                                  ),
                                  DropdownMenuItem(
                                    child: Image.asset(
                                        'assets/images/Saudi Arabia.png',
                                        width: 24.w,
                                        height: 18.h),
                                    value: 6,
                                  ),
                                ],
                                onChanged: (value) {
                                  selectedV = value;
                                  setState(() {
                                    selectedV = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    )
                  : _cuurentindex == 1
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Type of work',
                              style: TextStyle(
                                  fontFamily: 'sfm',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Fill in your bio data correctly',
                              style: TextStyle(
                                  color: Color(0xff6B7280),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: InkWell(
                                  onTap: () {
                                    print(index.toString());
                                    setState(() {
                                      sclect = index;
                                    });
                                  },
                                  child: Container(
                                    width: 327.w,
                                    height: 81.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: sclect == index
                                            ? Color(0xff3366FF).withOpacity(.3)
                                            : Color(0xffFFFFFF),
                                        border: Border.all(
                                            color: Color(sclect == index
                                                ? 0xff3366FF
                                                : 0xffD1D5DB))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              titlework[index],
                                              style: TextStyle(
                                                  fontFamily: 'sfm',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'CV.pdf ',
                                                  style: TextStyle(
                                                      color: Color(0xff6B7280),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Color(0xffACAEBE),
                                                  radius: 2,
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                                Text(
                                                  'Portfolio.pdf ',
                                                  style: TextStyle(
                                                      color: Color(0xff6B7280),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100.h,
                            )
                          ],
                        )
                      : Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Upload portfolio',
                                style: TextStyle(
                                    fontFamily: 'sfm',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                'Fill in your bio data correctly',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff6B7280)),
                              ),
                              SizedBox(
                                height: 28.h,
                              ),
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: 'Upload CV',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffFF472B))),
                              ])),
                              //here---------------------------------------------------------------------------------------------------------------------------------//
                            ],
                          ),
                        )
            ],
          )
        ]),
      ),
    );
  }
}

List<String> titlework = [
  'Senior UX Designer',
  'Senior UI Designer',
  'Graphik Designer',
  'Front-End Developer'
];
