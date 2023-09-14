import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/design/customButtom.dart';

class applyJob_screen extends StatefulWidget {
  const applyJob_screen({super.key});

  @override
  State<applyJob_screen> createState() => _applyJob_screenState();
}

class _applyJob_screenState extends State<applyJob_screen>
    with SingleTickerProviderStateMixin {
  int currentPage = 0;
  late TabController tapcontroller;
  @override
  void initState() {
    tapcontroller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tapcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButtom(
              text: 'Apply now',
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/arrow-left (1).svg',
                        ),
                      ),
                      Text(
                        'Job Detail',
                        style: TextStyle(fontSize: 20, fontFamily: 'sfm'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/archive-minus (1).svg',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/Twitter Logo.png',
                      width: 48.w,
                      height: 48.w,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Center(
                    child: Text(
                      'Senior UI Designer',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'sfm',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Center(
                    child: Text(
                      'Twitter • Jakarta, Indonesia ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 73.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                              color: Color(0xffD6E4FF),
                              borderRadius: BorderRadius.circular(100)),
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
                              borderRadius: BorderRadius.circular(100)),
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
                              borderRadius: BorderRadius.circular(100)),
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
                  ),
                  SizedBox(
                    height: 32,
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
                          Tab(
                            text: 'People',
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  currentPage == 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Description',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'sfm',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'Your role as the UI Designer is to use interactive components on \nvarious platforms (web, desktop and mobile). This will include \nproducing high-fidelity mock-ups, iconography, UI illustrations/\ngraphics, and other graphic elements. As the UI Designer, you \nwill be supporting the wider design team with the internal \nDesign System, tying together the visual language. You will with \nother UI and UX Designers, Product Managers, and Engineering \nteams in a highly customer-focused agile environment to help \ndefine the vision of the products.',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4B5563),
                                  height: 1.8),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'Skill Required',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'sfm',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'A strong visual portfolio with clear understanding of UI \nmethodologies',
                              style: TextStyle(
                                  color: Color(0xff4B5563),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                            ),
                            Text(
                              'Ability to create hi-fidelity mock-ups in Figma ',
                              style: TextStyle(
                                  color: Color(0xff4B5563),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                            ),
                            Text(
                              'Ability to create various graphics for the web e.g. illustrations \nand icons',
                              style: TextStyle(
                                  color: Color(0xff4B5563),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                            ),
                            Text(
                              'Able to facilitate workshops and liaise with stakeholders',
                              style: TextStyle(
                                  color: Color(0xff4B5563),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                            ),
                            Text(
                              'Proficiency in the Adobe Creative Suite',
                              style: TextStyle(
                                  color: Color(0xff4B5563),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                            ),
                          ],
                        )
                      : currentPage == 1
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontFamily: 'sfm',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 157.w,
                                      height: 56.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                          border: Border.all(
                                              color: Color(0xffE5E7EB))),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12),
                                              child: Text(
                                                'Email',
                                                style: TextStyle(
                                                    color: Color(0xff9CA3AF),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12),
                                              child: Text(
                                                'twitter@mail.com',
                                                style: TextStyle(
                                                    fontFamily: 'sfm',
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      width: 157.w,
                                      height: 56.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                          border: Border.all(
                                              color: Color(0xffE5E7EB))),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12),
                                              child: Text(
                                                'Website',
                                                style: TextStyle(
                                                    color: Color(0xff9CA3AF),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12),
                                              child: Text(
                                                'https://twitter.com',
                                                style: TextStyle(
                                                    fontFamily: 'sfm',
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Text(
                                  'About Company',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'sfm'),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  'Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including \'Best Staffing Firm to Work For 2018\'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.',
                                  style: TextStyle(
                                      height: 1.8,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff4B5563)),
                                )
                              ],
                            )
                          : Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          '6 Employees For',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'sfm',
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 4.h,
                                        ),
                                        Text(
                                          'UI/UX Design',
                                          style: TextStyle(
                                              color: Color(0xff6B7280),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 137.w,
                                      height: 38.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: Color(0xffD1D5DB))),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'UI/UX Designer',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SvgPicture.asset(
                                                'assets/icons/arrow-down.svg')
                                          ]),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                ListView.separated(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) => Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 6),
                                          child: ListTile(
                                            leading: Image.asset(
                                              'assets/images/Dimas Profile.png',
                                              width: 36.w,
                                              height: 36.w,
                                            ),
                                            title: Text(
                                              'Dimas Adi Saputro',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'sfm'),
                                            ),
                                            subtitle: Text(
                                              'Senior UI/UX Designer at Twitter',
                                              style: TextStyle(
                                                  color: Color(0xff6B7280),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            trailing: Column(children: [
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                '  Work during',
                                                style: TextStyle(
                                                    color: Color(0xff6B7280),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Text(
                                                '5 Years',
                                                style: TextStyle(
                                                    color: Color(0xff3366FF),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'sfm'),
                                              ),
                                            ]),
                                          ),
                                        ),
                                    separatorBuilder: (context, index) =>
                                        Container(
                                          width: 327.w,
                                          height: 1,
                                          color: Color(0xffE5E7EB),
                                        ),
                                    itemCount: 8)
                              ],
                            ),
                ],
              ),
            )),
      ),
    );
  }
}
