import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/core/design/customTextFormField.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Hi, Rafif Dian👋',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Create a better future for yourself here',
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffD1D5DB)),
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/notification.svg',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 28.h,
          ),
          CustomForm(
              keyboardType: TextInputType.url,
              icon: 'assets/icons/search-normal.svg',
              hint: 'Search....',
              isvis: true,
              isvalid: false),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Suggested Job',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                        color: Color(0xff3366FF),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: 300.w,
            height: 183.h,
            decoration: BoxDecoration(
                color: Color(0xff091A7A),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Zoom Logo.png',
                            width: 40.w,
                            height: 40.w,
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product Designer',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffFFFFFF)),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                'Zoom • United States',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9CA3AF)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/icons/archive-minus(2).svg')
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 87.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(.3),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          'Fulltime',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                      width: 87.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(.3),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          'Remote',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                      width: 87.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(.3),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          'Design',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$12K-15K',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            '/Month',
                            style: TextStyle(
                                color: Color(0xffFFFFFF).withOpacity(.5),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3366FF),
                            fixedSize: Size(96.w, 32.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        child: Text(
                          'Apply now',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Job',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                        color: Color(0xff3366FF),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                    width: 327.w,
                    height: 87.h,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Twitter Logo.png',
                                    width: 40.w,
                                    height: 40.w,
                                  ),
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Senior UI Designer',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Senior UI Designer',
                                        style: TextStyle(
                                            color: Color(0xff374151),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    select = index;
                                  });
                                },
                                child: SvgPicture.asset(select == index
                                    ? 'assets/icons/archive-minus44.svg'
                                    : 'assets/icons/archive-minus55.svg'),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 73.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffD6E4FF),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text(
                                        'Fulltime',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff3366FF)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Container(
                                    width: 73.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffD6E4FF),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text(
                                        'Remote',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff3366FF)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Container(
                                    width: 73.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffD6E4FF),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text(
                                        'Senior',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff3366FF)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$15K',
                                    style: TextStyle(
                                        color: Color(0xff2E8E18),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '/Month',
                                    style: TextStyle(
                                        color: Color(0xff6B7280),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          )
                        ]),
                  ),
              separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 327.w,
                    height: 1.h,
                    color: Color(0xffE5E7EB),
                  )),
              itemCount: 5)
        ],
      ),
    );
  }
}
