import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/core/logic/helper.dart';
import 'package:jobsque/screens/Home_screen/view.dart';

class message_page extends StatelessWidget {
  const message_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          SizedBox(
            height: 15.h,
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
                  width: 89.5.w,
                ),
                Text(
                  'Messsages',
                  style: TextStyle(
                      color: Color(0xff111827),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              Container(
                height: 48,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextFormField(
                    cursorColor: Color(0xff3366FF),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD1D5DB)),
                            borderRadius: BorderRadius.circular(100)),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'assets/icons/search-normal.svg'),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD1D5DB)),
                            borderRadius: BorderRadius.circular(100)),
                        hintText: 'Search messages....'),
                  ),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color(0xffD1D5DB))),
                  child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16))),
                          context: context,
                          builder: (context) => Container(
                            height: 309,
                            width: 375,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    topLeft: Radius.circular(16))),
                            child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(24, 36, 24, 16),
                                child: Text(
                                  'Message filters',
                                  style: TextStyle(
                                      color: Color(0xff111827),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  height: 49,
                                  width: 372,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xffD1D5DB)),
                                  ),
                                  child: Row(children: [
                                    Text(
                                      'Unread',
                                      style: TextStyle(
                                          color: Color(0xff374151),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 270,
                                    ),
                                    SvgPicture.asset(
                                        'assets/icons/arrow-right.svg')
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  height: 49,
                                  width: 372,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xffD1D5DB)),
                                  ),
                                  child: Row(children: [
                                    Text(
                                      'Spam',
                                      style: TextStyle(
                                          color: Color(0xff374151),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 280,
                                    ),
                                    SvgPicture.asset(
                                        'assets/icons/arrow-right.svg')
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  height: 49,
                                  width: 372,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xffD1D5DB)),
                                  ),
                                  child: Row(children: [
                                    Text(
                                      'Archived',
                                      style: TextStyle(
                                          color: Color(0xff374151),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 260,
                                    ),
                                    SvgPicture.asset(
                                        'assets/icons/arrow-right.svg')
                                  ]),
                                ),
                              ),
                            ]),
                          ),
                        );
                      },
                      child: Center(
                        child: SvgPicture.asset('assets/icons/setting-4.svg'),
                      )))
            ],
          ),
          SizedBox(height: 28),
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                    leading: Image.asset(
                      'assets/images/Twitter Logo1.png',
                      width: 44.w,
                      height: 44.w,
                    ),
                    title: Text(
                      'Twitter',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Here is the link: http://zoom.com/abcdeefg',
                      style: TextStyle(
                          color: Color(0xff6B7280),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Text(
                      '12.39',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3366FF)),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    indent: 84,
                    endIndent: 24,
                    thickness: 2,
                    color: Color(0xffE5E7EB),
                  ),
              itemCount: 5)
        ]),
      ),
    );
  }
}
