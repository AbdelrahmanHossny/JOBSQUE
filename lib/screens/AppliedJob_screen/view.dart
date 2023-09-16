import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppliedJob_screen extends StatefulWidget {
  const AppliedJob_screen({super.key});

  @override
  State<AppliedJob_screen> createState() => _AppliedJob_screenState();
}

class _AppliedJob_screenState extends State<AppliedJob_screen>
    with SingleTickerProviderStateMixin {
  int currentPage = 0;
  late TabController tapcontroller;
  @override
  void initState() {
    tapcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tapcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/arrow-left (1).svg')),
                SizedBox(
                  width: 65.w,
                ),
                Text(
                  'Applied Job',
                  style: TextStyle(
                      fontFamily: 'sfm',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Container(
            alignment: Alignment.center,
            width: 327.w,
            height: 46.h,
            decoration: BoxDecoration(
              color: Color(0xffF4F4F5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: TabBar(
                onTap: (value) {
                  currentPage = value;
                  setState(() {});
                },
                indicator: BoxDecoration(
                    color: Color(0xff091A7A),
                    borderRadius: BorderRadius.circular(100)),
                labelColor: Color(0xffFFFFFF),
                unselectedLabelColor: Color(0xff6B7280),
                controller: tapcontroller,
                tabs: [
                  Tab(
                    text: 'Desicription',
                  ),
                  Tab(
                    text: 'Company',
                  ),
                ]),
          ),
          currentPage == 0
              ? Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      height: 36.h,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0xffF4F4F5)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Row(
                            children: [
                              Text(
                                '3 Jobs',
                                style: TextStyle(
                                    color: Color(0xff6B7280),
                                    fontFamily: 'sfm',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 24, right: 24),
                        child: Container(
                          width: 327.w,
                          height: 186.h,
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Column(children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Spectrum Logo.png',
                                  width: 40.w,
                                  height: 40.w,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'UI/UX Designer',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'sfm'),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Spectrum • Jakarta, Indonesia ',
                                      style: TextStyle(
                                          color: Color(0xff374151),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 100.w,
                                ),
                                SvgPicture.asset(
                                    'assets/icons/archive-minus (1).svg')
                              ],
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70.w,
                                  height: 26.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xffD6E4FF),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Center(
                                    child: Text(
                                      'Fulltime',
                                      style: TextStyle(
                                          color: Color(0xff3366FF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Container(
                                  width: 70.w,
                                  height: 26.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xffD6E4FF),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Center(
                                    child: Text(
                                      'Remote',
                                      style: TextStyle(
                                          color: Color(0xff3366FF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 75.w,
                                ),
                                Text(
                                  'Posted 2 days ago',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Container(
                              width: 327.w,
                              height: 75.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffD1D5DB),
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              //here----------------------------------------------------------------------------------------------------------//
                            ),
                          ]),
                        ),
                      ),
                    )
                  ],
                )
              : Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 87.h,
                      ),
                      Image.asset(
                        'assets/images/Data Ilustration (1).png',
                        width: 173.w,
                        height: 142.h,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        'No applications were rejected',
                        style: TextStyle(
                            fontFamily: 'sfm',
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'If there is an application that is rejected by the \ncompany it will appear here',
                        style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
